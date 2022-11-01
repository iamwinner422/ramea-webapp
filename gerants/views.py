from django.db import models
from points_affaire.models import PointsAffaires
from django.contrib.auth.models import User
from gerants.models import Utilisateurs
from django.contrib import messages
from gerants.forms import UserProfilForm, UserProfilFormNew2, UserUpdateForm, UserChangeForm, UserProfilFormNew, UserPasswordForm
from administrateurs.forms import CreateUserForm
from django.shortcuts import get_object_or_404, redirect, render
from django.contrib.auth.decorators import login_required
from organisations.models import Organisations
from django.contrib.auth import login, authenticate, logout
from clients.models import Clients
import os
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders
#import xlwt
from ventess.models import Ventes
from prestation.models import Prestations
# Create your views here.


@login_required(login_url='login_admin')
def index(request):
    id_org = request.session['admin_org']
    id_admin =  request.session['admin_id']
    org = get_object_or_404(Organisations, id=id_org)
    
    
    form = CreateUserForm()
    profile_form = UserProfilForm(request=request)
 
    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        profile_form = UserProfilForm(request.POST, request=request)
        if form.is_valid() and profile_form.is_valid():
            pt_vte = request.POST.get('point_vente')
            tel= request.POST.get('telephone')
            leuser = form.save()
            Utilisateurs.objects.create(user=leuser, telephone=tel, admin_id=id_admin, organisation_id=id_org, point_vente_id=pt_vte)
            return redirect('index_gerants')
    
    #######################################
    if 'query' in request.GET:
        search = request.GET['query']
        lst_gerant = Utilisateurs.objects.filter(models.Q(user__first_name__icontains=search, organisation_id=id_org) | models.Q(user__last_name__icontains=search,organisation_id=id_org) | models.Q(telephone__icontains=search, organisation_id=id_org) | models.Q(point_vente__nom__icontains=search,organisation_id=id_org)).select_related()
    else:
        lst_gerant = Utilisateurs.objects.order_by('-id').filter(organisation_id=id_org).select_related()
    
    context = {
        'form': form,
        'org':org,
        'profile_form':profile_form,
        'lst_gerant':lst_gerant,
    }
    return render(request, 'gerants/index.html', context)

@login_required(login_url='login_gerant')
def update_gerant(request):
    id_gerant = request.user.id
    id_pt_vente = request.session['point_vente_id']
    pt_vente =  get_object_or_404(PointsAffaires, id=id_pt_vente)

    user = get_object_or_404(User, id=id_gerant) #RECUPERATION DE L'UTILISATEUR CONNECTE
    gerant_profile = get_object_or_404(Utilisateurs, user=request.user)

    if request.method == 'POST':
        form =  UserUpdateForm(request.POST, instance=user)
        profile_form = UserProfilFormNew(request.POST, instance=gerant_profile)
        if form.is_valid() and profile_form.is_valid():
            form.save()
            profile_form.save()
            return redirect('user_dashboard_index')#A MODIFIER
    else:
        form =  UserUpdateForm(instance=user)
        profile_form = UserProfilFormNew(instance=gerant_profile)

    context = {
        'form': form,
        'profile_form' : profile_form,
        'point_vente' : pt_vente,
    }

    return render(request, 'gerants/update.html', context)


@login_required(login_url='login_admin')
def update_point_gerant(request, id):
    id_org = request.session['admin_org']
    #id_admin =  request.session['admin_id']
    org = get_object_or_404(Organisations, id=id_org)

    #RECUPERATION DU PROFIL GERANT
    gerant = get_object_or_404(Utilisateurs, id=id)
    user = get_object_or_404(User, id=gerant.user_id) #RECUPERATION DE L'UTILISATEUR PAR LE GERANT

    if request.method == 'POST':
        form = UserProfilFormNew2(request.POST, instance=gerant, request=request)
        if form.is_valid():
            form.save()
            return redirect('index_points')
    else:
        form = UserProfilFormNew2(instance=gerant, request=request)

    context = {
        'org': org,
        'user':user,
        'gerant': gerant,
        'form': form,
    }
    return render(request, 'gerants/update_point.html', context)



@login_required(login_url='login_admin')
def details_gerant(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    gerant = get_object_or_404(Utilisateurs, id=id)

    #NOMBRE DE CLIENTS
    lst_clt = Clients.objects.filter(gerant=gerant).order_by('nom')
    nb_clt = Clients.objects.filter(gerant=gerant).count()

     #VENTES 
    lst_vte =  Ventes.objects.filter(org=org, gerant=gerant).order_by('date_vente')
    nb_vte = Ventes.objects.filter(org=org, gerant=gerant).count()

    lst_prest = Prestations.objects.filter(org=org, gerant=gerant).order_by('date_prestation')
    nb_prest =  Prestations.objects.filter(org=org, gerant=gerant).count()

    context = {
        'org':org,
        'gerant':gerant,
        'nb_clt': nb_clt,
        'lst_clt': lst_clt,
        'lst_vte':lst_vte,
        'nb_vte':nb_vte,
        'lst_prest':lst_prest,
        'nb_prest':nb_prest,
    }

    return render(request, 'gerants/details.html', context)



@login_required(login_url='login_gerant')
def update_pass_gerant(request):
    id_gerant = request.user.id
    id_pt_vente = request.session['point_vente_id']
    pt_vente =  get_object_or_404(PointsAffaires, id=id_pt_vente)
    
    user = get_object_or_404(User, id=id_gerant)
    if request.method == 'POST':
        form = UserPasswordForm(user=user, data=request.POST)
        if form.is_valid():
            form.save()
            return redirect('user_dashboard_index')#A MODIFIER
    else:
        form =  UserPasswordForm(user=user)
    
    context = {
        'form': form,
        'point_vente': pt_vente,
        'user': user,
    }

    return render(request, 'gerants/update_pass.html', context)




def login_gerant(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        #CHANGEMENT DE CHEMIN POUR LA REDIRECTION
        #SI LE USER
        if user is not None:
            login(request, user)
            return redirect('user_dashboard_index')
        else:
            messages.info(request, "Nom d'utilisateur ou mot de passe incorrect!")

    return render(request, 'gerants/login.html')

def logout_gerant(request):
    logout(request)
    return redirect('login_gerant')



def link_callback(uri, rel):
    """
    Convert HTML URIs to absolute system paths so xhtml2pdf can access those
    resources
    """
    result = finders.find(uri)
    if result:
        if not isinstance(result, (list, tuple)):
            result = [result]
            result = list(os.path.realpath(path) for path in result)
            path=result[0]
        else:
            sUrl = settings.STATIC_URL        # Typically /static/
            sRoot = settings.STATIC_ROOT      # Typically /home/userX/project_static/
            mUrl = settings.MEDIA_URL         # Typically /media/
            mRoot = settings.MEDIA_ROOT       # Typically /home/userX/project_static/media/

            if uri.startswith(mUrl):
                path = os.path.join(mRoot, uri.replace(mUrl, ""))
            elif uri.startswith(sUrl):
                path = os.path.join(sRoot, uri.replace(sUrl, ""))
            else:
                return uri

            # make sure that file exists
        if not os.path.isfile(path):
            raise Exception(
                'media URI must start with %s or %s' % (sUrl, mUrl)
            )
        return path


@login_required(login_url='login_admin')
def export_pdf(request):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)
    lst_gerant = Utilisateurs.objects.order_by('user__last_name').filter(organisation_id=id_org).select_related()

    template_path = 'gerants/pdf-output.html'
    context = {'org': org, 'lst_gerant':lst_gerant}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    #response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
    response['Content-Disposition'] = 'attachment; filename="liste_des_vendeurs.pdf"'
    # find the template and render it.
    template = get_template(template_path)
    html = template.render(context)

    # create a pdf
    pisa_status = pisa.CreatePDF(
       html, dest=response, link_callback=link_callback)
    # if error then show some funy view
    if pisa_status.err:
       return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response


@login_required(login_url='login_admin')
def export_xls(request):
    id_org = request.session['admin_org']

    response = HttpResponse(content_type='application/ms-excel')
    response['Content-Disposition'] = 'attachment; filename="liste_des_gérants.xls"'

    """wb = xlwt.Workbook(encoding='utf-8')
    ws = wb.add_sheet('Gérants') # this will make a sheet named Users Data

    # Sheet header, first row
    row_num = 0

    font_style = xlwt.XFStyle()
    font_style.font.bold = True

    columns = ['Nom', 'Prénoms', 'Téléphone', 'Point de vente']

    for col_num in range(len(columns)):
        ws.write(row_num, col_num, columns[col_num], font_style) # at 0 row 0 column 

    # Sheet body, remaining rows
    font_style = xlwt.XFStyle()

    rows = Utilisateurs.objects.order_by('user__last_name').filter(organisation_id=id_org).select_related().values_list('user__last_name', 'user__first_name', 'telephone', 'point_vente__nom')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)"""

    return response