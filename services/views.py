from django.contrib import messages
from django.db import models
from categories.models import Categories
from services.forms import FormServices
from django.shortcuts import redirect, render, get_object_or_404
from django.contrib.auth.decorators import login_required
from organisations.models import Organisations
from services.models import Services
from django.template.loader import render_to_string

import os
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders
#import xlwt
from prestation.models import Prestations


# Create your views here.
@login_required(login_url='login_admin')
def index(request):
    
    id_org = request.session['admin_org']
    id_admin =  request.session['admin_id']
    org = get_object_or_404(Organisations, id=id_org)

    if request.method == 'POST':
        form = FormServices(request.POST, request=request)
        if form.is_valid():
            lnom = request.POST.get('nom')
            cat = request.POST.get('categorie')
            #verification
            un_serv = Services.objects.create(nom=lnom, org=org)
            if un_serv is None or un_serv == "":
                Services.objects.create(nom=lnom, categorie_id=cat, org_id=id_org, admin_id=id_admin)
                return redirect('index_services')
            else:
                messages.info(request, "Erreur! Le service existe déjà.")
    else:
        form = FormServices(request=request)

    #######################
    if 'query' in request.GET:
        search = request.GET['query']
        lst_ser = Services.objects.filter(models.Q(nom__icontains=search, org_id=id_org) | models.Q(categorie__nom__icontains=search, org_id=id_org))
    else:
        lst_ser = Services.objects.order_by('-id').filter(org_id=id_org)

    context = {
        'form': form,
        'org':org,
        'lst_serv':lst_ser,
    }
    return render(request, 'services/index.html', context)


@login_required(login_url='login_admin')
def delete_service(request, id):
    serv = get_object_or_404(Services, id=id)
    serv.delete()
    return redirect('index_services')

@login_required(login_url='login_admin')
def update_service(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)
    serv = get_object_or_404(Services, id=id)

    if request.method == 'POST':
        form = FormServices(request.POST, instance=serv, request=request)
        if form.is_valid():
            serv = form.save()
            return redirect('index_services')
    else:
        form = FormServices(instance=serv, request=request)

    context = {
        'form': form,
        'org':org,
        'serv':serv,
    }
    return render(request, 'services/update.html', context)


@login_required(login_url='login_admin')
def details_service(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)
    service = get_object_or_404(Services, id=id)

    lst_prest = Prestations.objects.filter(org=org, service=service).order_by('date_prestation')
    nb_prest =  Prestations.objects.filter(org=org, service=service).count()

    context = {
        'org':org,
        'serv': service,
        'lst_prest':lst_prest,
        'nb_prest':nb_prest,
    }

    return render(request, 'services/details.html', context)



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
    lst_ser = Services.objects.order_by('nom').filter(org_id=id_org)

    template_path = 'services/pdf-output.html'
    context = {'org': org, 'lst_serv':lst_ser}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    #response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
    response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
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
    response['Content-Disposition'] = 'attachment; filename="liste_des_services.xls"'
    """
    wb = xlwt.Workbook(encoding='utf-8')
    ws = wb.add_sheet('Services') # this will make a sheet named Users Data

    # Sheet header, first row
    row_num = 0

    font_style = xlwt.XFStyle()
    font_style.font.bold = True

    columns = ['Nom du service', 'Catégorie du service']

    for col_num in range(len(columns)):
        ws.write(row_num, col_num, columns[col_num], font_style) # at 0 row 0 column 

    # Sheet body, remaining rows
    font_style = xlwt.XFStyle()

    rows = Services.objects.order_by('nom').filter(org_id=id_org).values_list('nom', 'categorie__nom')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)
    """
    return response