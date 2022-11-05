from django.contrib import messages
from django.contrib.auth.forms import PasswordChangeForm, UserChangeForm
from django.contrib.auth.models import User
from django.db import models
from django.shortcuts import redirect, render, get_object_or_404
from .forms import CreateUserForm, AdminProfileForm, UserPasswordForm, UserUpdateForm
from .models import Administrateurs
from organisations.models import Organisations
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.decorators import login_required
from points_affaire.models import PointsAffaires
from categories.models import Categories
from produits.models import Produits
from services.models import Services
from gerants.models import Utilisateurs
from requestings.models import Requestings
import os
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders


# import xlwt

# Create your views here.
def new_admin(request, id):
    form = CreateUserForm()
    profile_form = AdminProfileForm()
    org = get_object_or_404(Organisations, id=id)
    nom = org.nom

    if request.method == 'POST':
        profile_form = AdminProfileForm(request.POST)
        form = CreateUserForm(request.POST)
        if form.is_valid() and profile_form.is_valid():
            tel = profile_form.instance.telephone
            leuser = form.save()
            Administrateurs.objects.create(user=leuser, telephone=tel, organisation_id=id)
            return redirect('login_admin')
    context = {
        'form': form,
        'nom_org': nom,
        'profile_form': profile_form,
    }

    return render(request, 'administrateurs/new.html', context)


def new_admin_demande(request, id, id_dmd):
    form = CreateUserForm()
    profile_form = AdminProfileForm()
    org = get_object_or_404(Organisations, id=id)  # RECUPERATION DE L'ORGANISATION
    nom = org.nom  # RECUPERATION DU NOM
    dmd = get_object_or_404(Requestings, id=id_dmd)
    valide = dmd.valide

    if not valide:

        if request.method == 'POST':
            profile_form = AdminProfileForm(request.POST)
            form = CreateUserForm(request.POST)
            if form.is_valid() and profile_form.is_valid():
                tel = profile_form.instance.telephone
                leuser = form.save()
                Administrateurs.objects.create(user=leuser, telephone=tel, organisation_id=id)

                dmd.valide = True  # CHANGEMENT A TRUE
                dmd.save()
                return redirect('login_admin')
        context = {
            'form': form,
            'nom_org': nom,
            'profile_form': profile_form,
        }

        return render(request, 'administrateurs/new.html', context)
    else:
        return HttpResponse("Le lien a expiré.")


@login_required(login_url='login_admin')
def update_admin(request):
    id_admin = request.user.id
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)
    user = get_object_or_404(User, id=id_admin)

    admin_profile = Administrateurs.objects.get(user=request.user)

    if request.method == 'POST':
        form = UserUpdateForm(request.POST, instance=user)
        profile_form = AdminProfileForm(request.POST, instance=admin_profile)
        if form.is_valid() and profile_form.is_valid():
            form.save()
            profile_form.save()
            return redirect('dashboard_index')  # A MODIFIER
    else:
        form = UserChangeForm(instance=user)
        profile_form = AdminProfileForm(instance=admin_profile)

    context = {
        'form': form,
        'org': org,
        'profile_form': profile_form,
    }

    return render(request, 'administrateurs/update.html', context)


@login_required(login_url='login_admin')
def update_pass(request):
    id_admin = request.user.id
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    user = get_object_or_404(User, id=id_admin)
    if request.method == 'POST':
        form = PasswordChangeForm(user=user, data=request.POST)
        if form.is_valid():
            form.save()
            return redirect('dashboard_index')  # A MODIFIER
    else:
        form = UserPasswordForm(user=user)

    context = {
        'form': form,
        'org': org,
        'user': user,
    }

    return render(request, 'administrateurs/update_pass.html', context)


@login_required(login_url='login_admin')
def list_admin(request):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    form = CreateUserForm()
    profile_form = AdminProfileForm()

    if request.method == 'POST':
        profile_form = AdminProfileForm(request.POST)
        form = CreateUserForm(request.POST)
        if form.is_valid() and profile_form.is_valid():
            tel = profile_form.instance.telephone
            leuser = form.save()
            Administrateurs.objects.create(user=leuser, telephone=tel, organisation_id=id_org)
            return redirect('list_admin')

    if 'query' in request.GET:
        search = request.GET['query']
        lst_admin = Administrateurs.objects.filter(
            models.Q(user__first_name__icontains=search, organisation_id=id_org) | models.Q(
                user__last_name__icontains=search, organisation_id=id_org) | models.Q(telephone__icontains=search,
                                                                                      organisation_id=id_org) | models.Q(
                user__email__icontains=search, organisation_id=id_org)).select_related()
    else:
        lst_admin = Administrateurs.objects.order_by('-id').filter(organisation_id=id_org).select_related()

    context = {
        'form': form,
        'lst_gest': lst_admin,
        'org': org,
        'profile_form': profile_form,
    }

    return render(request, 'administrateurs/liste.html', context)


@login_required(login_url='login_admin')
def details_admin(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    admin = get_object_or_404(Administrateurs, id=id)

    # POINT DE VENTE
    nb_point = PointsAffaires.objects.filter(admin=admin).count()
    lst_point = PointsAffaires.objects.filter(admin=admin).order_by('nom')

    # CATEGORIES
    nb_cat = Categories.objects.filter(admin=admin).count()
    lst_cat = Categories.objects.filter(admin=admin).order_by('nom')

    # PRODUITS
    nb_prod = Produits.objects.filter(admin=admin).count()
    lst_prod = Produits.objects.filter(admin=admin).order_by('designation')

    # SERVICES
    nb_serv = Services.objects.filter(admin=admin).count()
    lst_serv = Services.objects.filter(admin=admin).order_by('nom')

    # GERANTS
    nb_gerant = Utilisateurs.objects.filter(admin=admin).count()
    lst_gerant = Utilisateurs.objects.filter(admin=admin)

    context = {
        'org': org,
        'admin': admin,
        'nb_point': nb_point,
        'nb_cat': nb_cat,
        'nb_gerant': nb_gerant,
        'nb_prod': nb_prod,
        'nb_serv': nb_serv,
        'lst_point': lst_point,
        'lst_cat': lst_cat,
        'lst_prod': lst_prod,
        'lst_serv': lst_serv,
        'lst_gerant': lst_gerant,

    }

    return render(request, 'administrateurs/details.html', context)


def login_admin(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)
        if user is not None:
            # RECUPERATION DU model UTILISATEUR POUR LA VALIDATION
            try:
                admin = Administrateurs.objects.get(user=user)
            except Administrateurs.DoesNotExist:
                admin = None

            if admin is not None:
                login(request, user)
                return redirect('dashboard_index')
            else:
                messages.info(request, "Erreur! Vous n'êtes pas autorisé à vous connecter.")
        else:
            messages.info(request, "Nom d'utilisateur ou mot de passe incorrect!")

    return render(request, 'administrateurs/index.html')


def logout_admin(request):
    logout(request)
    return redirect('login_admin')


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
            path = result[0]
        else:
            sUrl = settings.STATIC_URL  # Typically /static/
            sRoot = settings.STATIC_ROOT  # Typically /home/userX/project_static/
            mUrl = settings.MEDIA_URL  # Typically /media/
            mRoot = settings.MEDIA_ROOT  # Typically /home/userX/project_static/media/

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
    lst_admin = Administrateurs.objects.order_by('-id').filter(organisation_id=id_org).select_related()

    template_path = 'administrateurs/pdf-output.html'
    context = {'org': org, 'lst_admin': lst_admin}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    # response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
    response['Content-Disposition'] = 'attachment; filename="liste_des_gestionnaires.pdf"'
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
    response['Content-Disposition'] = 'attachment; filename="liste_des_gestionnaires.xls"'

    """wb = xlwt.Workbook(encoding='utf-8')
    ws = wb.add_sheet('Gestionnaires') # this will make a sheet named Users Data

    # Sheet header, first row
    row_num = 0

    font_style = xlwt.XFStyle()
    font_style.font.bold = True

    columns = ['Nom', 'Prénoms', 'Téléphone', 'Adresse e-mail']

    for col_num in range(len(columns)):
        ws.write(row_num, col_num, columns[col_num], font_style) # at 0 row 0 column 

    # Sheet body, remaining rows
    font_style = xlwt.XFStyle()

    rows = Administrateurs.objects.order_by('user__last_name').filter(organisation_id=id_org).select_related().values_list('user__last_name', 'user__first_name', 'telephone', 'user__email')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)"""

    return response
