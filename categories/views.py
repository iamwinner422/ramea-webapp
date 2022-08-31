from django.db import models
import categories
from django.shortcuts import redirect, render, get_object_or_404
from django.contrib.auth.decorators import login_required
from organisations.models import Organisations
from .forms import FormCategorie
from .models import Categories
# Create your views here.

import os
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders
#import xlwt


@login_required(login_url='login_admin')
def index(request):
    id_admin =  request.session['admin_id']
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    if request.method == 'POST':
        form = FormCategorie(request.POST)
        if form.is_valid():
            lenom = request.POST.get('nom')
            typecat = request.POST.get('typecategorie')
            cat = Categories(nom=lenom, typecategorie_id=typecat, org_id=id_org, admin_id=id_admin)
            cat.save()
            return redirect('index_categories')

    else:
        form = FormCategorie()


    if 'query' in request.GET:
        search = request.GET['query']
        list_cat = Categories.objects.filter(models.Q(nom__icontains=search, org_id=id_org) | models.Q(typecategorie__nom__icontains=search,org_id=id_org))
    else:
        list_cat = Categories.objects.order_by('-id').filter(org_id=id_org)

    context = {
        'org': org,
        'form':form,
        'lst_cat':list_cat,
    }

    return render(request, 'categories/index.html', context)



@login_required(login_url='login_admin')
def delete_cat(request, id):
    cat = get_object_or_404(Categories, id=id)
    cat.delete()
    return redirect('index_categories')

@login_required(login_url='login_admin')
def update_cat(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    cat = get_object_or_404(Categories, id=id)
    if request.method == 'POST':
        form = FormCategorie(request.POST, instance=cat)
        if form.is_valid():
            form.save()
            return redirect('index_categories')
    else: 
        form = FormCategorie(instance=cat)

    context = {
        'form':form,
        'cat': cat,
        'org':org,
    }

    return render(request, 'categories/update.html', context)



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
    lst_cat = Categories.objects.order_by('nom').filter(org_id=id_org)

    template_path = 'categories/pdf-output.html'
    context = {'org': org, 'lst_cat':lst_cat}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    #response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
    response['Content-Disposition'] = 'attachment; filename="liste_des_catégories.pdf"'
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
    response['Content-Disposition'] = 'attachment; filename="liste_des_catégories.xls"'
    """
    wb = xlwt.Workbook(encoding='utf-8')
    ws = wb.add_sheet('Catégories') # this will make a sheet named Users Data

    # Sheet header, first row
    row_num = 0

    font_style = xlwt.XFStyle()
    font_style.font.bold = True

    columns = ['Nom de la catégorie', 'Type de la catégorie']

    for col_num in range(len(columns)):
        ws.write(row_num, col_num, columns[col_num], font_style) # at 0 row 0 column 

    # Sheet body, remaining rows
    font_style = xlwt.XFStyle()

    rows = Categories.objects.order_by('nom').filter(org_id=id_org).values_list('nom', 'typecategorie__nom')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)"""

    return response