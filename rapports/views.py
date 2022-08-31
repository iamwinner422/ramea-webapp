from django.contrib.auth import login
from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required
from organisations.models import Organisations
import os
import datetime
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders
#import xlwt
from points_affaire.models import PointsAffaires
from produits.models import Produits
from ventess.models import Ventes

# Create your views here.

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

today = datetime.date.today()

@login_required(login_url='login_admin')
def vente_j_pdf(request):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)
    lst_vte_j = Ventes.objects.order_by('-id').filter(org=org, date_vente__year=today.year, date_vente__month=today.month, date_vente__day=today.day)#DU JOUR

    template_path = 'reports/vente_j.html'
    context = {'org': org, 'lst_vte_j':lst_vte_j}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    #response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
    response['Content-Disposition'] = 'attachment; filename="liste_des_ventes_du_jour.pdf"'
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
def index(request):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)
    #COMPTAGE 
    aujourdhui = datetime.date.today()
    nb_point_day = PointsAffaires.objects.order_by('nom').filter(org_id=id_org, date_creation__date=aujourdhui).values_list('nom', 'telephone_point', 'adresse').count()

    context = {
        'org':org,
        'nb_point_day':nb_point_day,
    }
    return render(request, 'rapports/index.html', context)




@login_required(login_url='login_admin')
def export_day_point_xls(request):
    id_org = request.session['admin_org']

    response = HttpResponse(content_type='application/ms-excel')
    response['Content-Disposition'] = 'attachment; filename="liste_des_points_de_vente.xls"'
    """
    wb = xlwt.Workbook(encoding='utf-8')
    ws = wb.add_sheet('Points de vente') # this will make a sheet named Users Data

    # Sheet header, first row
    row_num = 0

    font_style = xlwt.XFStyle()
    font_style.font.bold = True

    columns = ['Nom du point', 'Téléphone', 'Adresse']

    for col_num in range(len(columns)):
        ws.write(row_num, col_num, columns[col_num], font_style) # at 0 row 0 column 

    # Sheet body, remaining rows
    font_style = xlwt.XFStyle()
    aujourdhui = datetime.date.today()
    rows = PointsAffaires.objects.order_by('nom').filter(org_id=id_org, date_creation__date=aujourdhui).values_list('nom', 'telephone_point', 'adresse')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)
"""
    return response
