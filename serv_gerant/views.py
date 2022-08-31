from gerants.views import login_gerant
from django.db import models
from django.shortcuts import get_object_or_404, render
from services.models import Services
from django.contrib.auth.decorators import login_required
from points_affaire.models import PointsAffaires
import os
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders
#import xlwt
from prestation.models import Prestations




@login_required(login_url='login_gerant')
def list_serv_gerant(request):
    #gerant = Utilisateurs.objects.get(user=request.user)
    #id_gerant = gerant.pk
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)

    if 'query' in request.GET:
        search = request.GET['query']
        lst_serv = Services.objects.filter(models.Q(nom__icontains=search, point_vente=pt_vente) | models.Q(categorie__nom__icontains=search, point_vente=pt_vente))
    else:
        lst_serv = Services.objects.filter(point_vente=pt_vente).order_by('nom')
    
    context = {
        'point_vente':pt_vente,
        'lst_serv':lst_serv,
    } 

    return render(request, 'dashboard_user/services/index.html', context)


#DETAILS SERVICES
@login_required(login_url='login_gerant')
def details_service(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)
    service = get_object_or_404(Services, id=id)

    lst_prest = Prestations.objects.filter(point_vente=pt_vente, service=service).order_by('date_prestation')
    nb_prest =  Prestations.objects.filter(point_vente=pt_vente, service=service).count()

    context = {
        'point_vente':pt_vente,
        'serv': service,
        'nb_prest': nb_prest,
        'lst_prest': lst_prest,
    }

    return render(request, 'dashboard_user/services/details.html', context)


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



@login_required(login_url='login_gerant')
def export_pdf(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)
    lst_ser = Services.objects.filter(point_vente=pt_vente).order_by('nom')

    template_path = 'dashboard_user/services/pdf-output.html'
    context = {'pt': pt_vente, 'lst_serv':lst_ser}
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

@login_required(login_url='login_gerant')
def export_xls(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)

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

    rows = Services.objects.filter(point_vente=pt_vente).order_by('nom').values_list('nom', 'categorie__nom')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)
    """
    return response