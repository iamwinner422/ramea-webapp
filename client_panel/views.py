from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.db import models
from organisations.models import Organisations
from clients.models import Clients
from clients.forms import FormClient
# Create your views here.
import os
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders
#import xlwt
from ventess.models import Ventes
from prestation.models import Prestations



@login_required(login_url='login_admin')
def index(request):
    #id_admin =  request.session['admin_id']
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    #LISTE DES CLIENTS ET RECHERCHE
    if 'query' in request.GET:
        search = request.GET['query']
        lst_clt = Clients.objects.filter(models.Q(nom__icontains=search, org_id=id_org) | models.Q(prenoms__icontains=search, org_id=id_org) | models.Q(telephone_p__icontains=search, org_id=id_org) | models.Q(adr_phisique__icontains=search, org_id=id_org))
    else:
        lst_clt = Clients.objects.filter(org_id=id_org).order_by('nom')
    #LISTE DES CLIENTS ET RECHERCHE

    context = {
        'org': org,
        'lst_clt': lst_clt,
    }
    return render(request, 'client_panel/index.html', context)



@login_required(login_url='login_admin')
def delete_client(request, id):
    client = get_object_or_404(Clients, id=id)
    client.delete()
    return redirect('index_clients_panel')


@login_required(login_url='login_admin')
def update_client(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    client = get_object_or_404(Clients, id=id)
    
    if request.method == 'POST':
        form = FormClient(request.POST, request.FILES, instance=client)
        if form.is_valid():
            form.save()
            return redirect('index_clients_panel')
    else:
        form = FormClient(instance=client)


    context = {
        'org': org,
        'clt': client,
        'form':form,
    }
    return render(request, 'client_panel/update.html', context)



@login_required(login_url='login_admin')
def details_client(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)
    
    #RECUPERATION DU CLIENT
    client = get_object_or_404(Clients, id=id)

    lst_vte = Ventes.objects.filter(client=client, org=org).order_by('date_vente')
    nb_vte = Ventes.objects.filter(client=client, org=org).count()

    lst_prest = Prestations.objects.filter(client=client, org=org).order_by('date_prestation')
    nb_prest = Prestations.objects.filter(client=client, org=org).count()


    context = {
        'clt':client,
        'org': org,
        'lst_vte': lst_vte,
        'nb_vte': nb_vte,
        'nb_prest': nb_prest,
        'lst_prest': lst_prest,
    }

    return render(request, 'client_panel/details.html', context)




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
    lst_clt = Clients.objects.filter(org_id=id_org).order_by('nom')

    template_path = 'client_panel/pdf-output.html'
    context = {'org': org, 'lst_clt':lst_clt}
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
    id_org = request.session['admin_org']

    response = HttpResponse(content_type='application/ms-excel')
    response['Content-Disposition'] = 'attachment; filename="liste_des_clients.xls"'
    """
    wb = xlwt.Workbook(encoding='utf-8')
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

    rows = Clients.objects.filter(org_id=id_org).order_by('nom').values_list('nom', 'prenoms', 'telephone_p', 'telephone_s', 'adr_mail', 'adr_phisique')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)"""

    return response