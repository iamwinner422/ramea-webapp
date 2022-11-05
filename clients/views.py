from django.db import models
from django.db.models import Count, Sum 
from django.shortcuts import get_object_or_404, redirect, render
from points_affaire.models import PointsAffaires
from .forms import FormClient
from gerants.models import Utilisateurs
from clients.models import Clients
from django.contrib.auth.decorators import login_required
from ventess.models import Ventes
from prestation.models import Prestations
# Create your views here.
import os
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders
#import xlwt



@login_required(login_url='login_gerant')
def index(request):
    gerant = get_object_or_404(Utilisateurs, user=request.user)
    id_gerant = gerant.pk
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)
    org_id = gerant.organisation_id

    if request.method == 'POST':
        form = FormClient(request.POST, request.FILES)
        if form.is_valid():
            nom = request.POST.get('nom')
            pnoms = request.POST.get('prenoms')
            tel_p = request.POST.get('telephone_p')
            tel_s = request.POST.get('telephone_s')
            mail = request.POST.get('adr_mail')
            adr = request.POST.get('adr_phisique')
            img = request.FILES.get('image')
            """clt = form.save()
            clt.point_vente = id_pt_vente
            clt.gerant = id_gerant
            clt.save()"""
            Clients.objects.create(nom=nom, prenoms=pnoms, telephone_p=tel_p, telephone_s = tel_s, adr_mail=mail, adr_phisique=adr,image=img, gerant_id=id_gerant, point_vente_id=id_pt_vente, org_id=org_id)
            return redirect('index_clients')
    else:
        form = FormClient()


    #LISTE DES CLIENTS ET RECHERCHE
    if 'query' in request.GET:
        search = request.GET['query']
        lst_clt = Clients.objects.filter(models.Q(nom__icontains=search, point_vente_id=id_pt_vente) | models.Q(prenoms__icontains=search, point_vente_id=id_pt_vente) | models.Q(telephone_p__icontains=search, point_vente_id=id_pt_vente) | models.Q(adr_phisique__icontains=search, point_vente_id=id_pt_vente))
        lst_clt_o = Clients.objects.filter(models.Q(nom__icontains=search, org_id=org_id) | models.Q(prenoms__icontains=search, org_id=org_id) | models.Q(telephone_p__icontains=search, org_id=org_id) | models.Q(adr_phisique__icontains=search, org_id=org_id), ~models.Q(point_vente_id=id_pt_vente))
    else:
        lst_clt = Clients.objects.filter(point_vente_id=id_pt_vente).order_by('-id')
        lst_clt_o = Clients.objects.filter(~models.Q(point_vente_id=id_pt_vente), org_id=org_id).order_by('-id')

     #TOP DES CLIENTS
    top_clt_nb = Clients.objects.filter(point_vente=pt_vente, ventes__point_vente=pt_vente).values('id','nom', 'prenoms').annotate(nb=Count('ventes')).order_by('-nb')##PAR NOMBRE D'ACHAT
    top_clt_montant = Clients.objects.filter(point_vente=pt_vente, ventes__point_vente=pt_vente).values('id','nom', 'prenoms').annotate(montant=Sum('ventes__montant_net')).order_by('-montant')#PAR MONTANT DE L'ACHAT

    context = {
        'point_vente':pt_vente,
        'form':form,
        'lst_clt':lst_clt,
        'top_clt_montant':top_clt_montant,
        'top_clt_nb':top_clt_nb,
        'lst_clt_o':lst_clt_o,
    }
    return render(request, 'clients/index.html', context)


@login_required(login_url='login_gerant')
def details_client(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)

    #RECUPERATION DU CLIENT
    client = get_object_or_404(Clients, id=id)
    
    lst_vte = Ventes.objects.filter(client=client, point_vente=pt_vente).order_by('date_vente')
    nb_vte = Ventes.objects.filter(client=client, point_vente=pt_vente).count()

    lst_prest = Prestations.objects.filter(client=client, point_vente=pt_vente).order_by('date_prestation')
    nb_prest = Prestations.objects.filter(client=client, point_vente=pt_vente).count()
    context = {
        'clt':client,
        'point_vente': pt_vente,
        'nb_vte' : nb_vte,
        'lst_vte': lst_vte,
        'nb_prest': nb_prest,
        'lst_prest':lst_prest,
    }

    return render(request, 'clients/details.html', context)
 

@login_required(login_url='login_gerant')
def update_client(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)

    client = Clients.objects.get(id=id)
    if request.method == 'POST':
        form = FormClient(request.POST, request.FILES, instance=client)
        if form.is_valid():
            form.save()
            return redirect('index_clients')
    else:
        form = FormClient(instance=client)


    context = {
        'point_vente':pt_vente,
        'clt': client,
        'form':form,
    }
    return render(request, 'clients/update.html', context)



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
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)
    lst_clt = Clients.objects.filter(point_vente_id=id_pt_vente).order_by('nom')

    template_path = 'clients/pdf-output.html'
    context = {'pt': pt_vente, 'lst_clt':lst_clt}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    #response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
    response['Content-Disposition'] = 'attachment; filename="liste_des_clients.pdf"'
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



@login_required(login_url='login_gerant')
def export_xls(request):
    id_pt_vente = request.session['point_vente_id']

    response = HttpResponse(content_type='application/ms-excel')
    response['Content-Disposition'] = 'attachment; filename="liste_des_clients.xls"'

    """wb = xlwt.Workbook(encoding='utf-8')
    ws = wb.add_sheet('Clients') # this will make a sheet named Users Data

    # Sheet header, first row
    row_num = 0

    font_style = xlwt.XFStyle()
    font_style.font.bold = True

    columns = ['Nom', 'Prénoms', 'Téléphone', 'Téléphone s.', 'Adresse e-mail', 'Adresse']

    for col_num in range(len(columns)):
        ws.write(row_num, col_num, columns[col_num], font_style) # at 0 row 0 column 

    # Sheet body, remaining rows
    font_style = xlwt.XFStyle()

    rows = Clients.objects.filter(point_vente_id=id_pt_vente).order_by('nom').values_list('nom', 'prenoms', 'telephone_p', 'telephone_s', 'adr_mail', 'adr_phisique')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)"""

    return response