from django.forms import utils
import json
from produits.forms import FormStockProd
from django.db.models import F, Sum
from django.db import models
from django.shortcuts import get_object_or_404, redirect, render
from produits.models import Produits, QuantitePoint
from gerants.models import Utilisateurs
from django.contrib.auth.decorators import login_required
from points_affaire.models import PointsAffaires
import os
from django.urls import reverse
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders
from ventess.models import HistoProdVte, ProduitVente, Ventes
#import xlwt
import datetime

# Create your views here.
@login_required(login_url='login_gerant')
def list_prod_gerant(request):
    #gerant = Utilisateurs.objects.get(user=request.user)
    #id_gerant = gerant.pk
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)

    if 'query' in request.GET:
        search = request.GET['query']
        lst_prod = Produits.objects.filter(models.Q(designation__icontains=search, point_vente=pt_vente) | models.Q(prix_unitaire__icontains=search, point_vente=pt_vente) | models.Q(categorie__nom__icontains=search, point_vente=pt_vente))
    else:    
        lst_prod = Produits.objects.filter(point_vente=pt_vente).order_by('designation')
    

    ####HISTORIQUE DU STOCK
    #lst_histo_prod = HistoriqueProd.objects.filter(point_vente=pt_vente).order_by('-id')
    
    context = {
        'point_vente':pt_vente,
        'lst_prod':lst_prod,
        #'lst_histo_prod':lst_histo_prod,
    } 

    return render(request, 'dashboard_user/produits/index.html', context)


@login_required(login_url='login_gerant')
def details_produit(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)
    

    lbl_histo = []
    data_histo = []

    #RECUPERATION DU PRODUIT
    produit = get_object_or_404(Produits, id=id, point_vente=pt_vente)
    request.session['id_produit'] = produit.pk
    qte = get_object_or_404(QuantitePoint, produit=produit, point=pt_vente)
    lst_vte = Ventes.objects.filter(produit=produit, point_vente=pt_vente)
    nb_vte = Ventes.objects.filter(produit=produit, point_vente=pt_vente).count()
    #qte_cmdee = get_object_or_404(ProduitVente(produit=produit))
    qte_vendue= ProduitVente.objects.filter(produit=produit, vente__point_vente=pt_vente).aggregate(qte=Sum('qte_cmdee')).get('qte')
    lst_histo = HistoProdVte.objects.filter(produit=produit, point=pt_vente)

    def datetime_handler(x):
        if isinstance(x, datetime.datetime):
            #return x.__str__()
            return "{}/{}/{}".format(x.day, x.month, x.year)
        raise TypeError("Erreur!")

    for hst in lst_histo:
        lbl_histo.append(hst.date_ajout)
        data_histo.append(hst.qte)

    lbl_histo_j = json.dumps(lbl_histo, default=datetime_handler)
    data_histo_j = json.dumps(data_histo)

    context = {
        'point_vente':pt_vente,
        'prod':produit,
        'qte':qte,
        'lst_vte':lst_vte,
        'qte_vendue':qte_vendue,
        'nb_vte':nb_vte,
        'lbl_histo':lbl_histo_j,
        'data_histo':data_histo_j,
        
    }

    return render(request, 'dashboard_user/produits/details.html', context)




@login_required(login_url='login_gerant')
def update_stock(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)
    gerant = get_object_or_404(Utilisateurs, user=request.user)
    prod = get_object_or_404(Produits, id=id)

    if request.method == 'POST':
        form = FormStockProd(request.POST)
        if form.is_valid():
            qte_add = request.POST.get('quantite')
            #HistoriqueProd.objects.create(produit=prod, qte_ajoutee=qte_add, point_vente=pt_vente, gerant=gerant)
            prod.quantite = F('quantite') + int(qte_add)
            prod.save()

            return redirect(reverse('update_stock', kwargs={"id": prod.id}))
    else:
        form = FormStockProd()

    #######LISTE DES ENTREES EN STOCK POUR CE PRODUIT
    #lst_histo_prod = HistoriqueProd.objects.filter(point_vente=pt_vente, produit=prod).order_by('-id')

    context = {
        'point_vente':pt_vente,
        'prod':prod,
        'form':form,
    #    'lst_histo_prod': lst_histo_prod,
    } 
    return render(request, 'dashboard_user/produits/stock.html', context)



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
    lst_prod = Produits.objects.filter(point_vente=pt_vente).order_by('designation')

    template_path = 'dashboard_user/produits/pdf-output.html'
    context = {'pt': pt_vente, 'lst_prod':lst_prod}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    #response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
    response['Content-Disposition'] = 'attachment; filename="liste_des_produits.pdf"'
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
    response['Content-Disposition'] = 'attachment; filename="liste_des_produits.xls"'
    """
    wb = xlwt.Workbook(encoding='utf-8')
    ws = wb.add_sheet('Produits') # this will make a sheet named Users Data

    # Sheet header, first row
    row_num = 0

    font_style = xlwt.XFStyle()
    font_style.font.bold = True

    columns = ['Désignation', 'Qté Stock', 'Prix unitaire', 'Catégorie']

    for col_num in range(len(columns)):
        ws.write(row_num, col_num, columns[col_num], font_style) # at 0 row 0 column 

    # Sheet body, remaining rows
    font_style = xlwt.XFStyle()

    rows = Produits.objects.filter(point_vente=pt_vente).order_by('designation').values_list('designation', 'quantite', 'prix_unitaire', 'categorie__nom')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)"""

    return response


@login_required(login_url='login_gerant')
def export_xls_histo(request):
    """id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)
    response = HttpResponse(content_type='application/ms-excel')
    response['Content-Disposition'] = 'attachment; filename="historique_du_stock.xls"'

    wb = xlwt.Workbook(encoding='utf-8')
    ws = wb.add_sheet('Historique') # this will make a sheet named Users Data

    # Sheet header, first row
    row_num = 0
    
    font_style = xlwt.XFStyle()
    font_style.font.bold = True

    columns = ['Désignation', 'Quantité ajoutée', 'Quantité en stock', 'Date d\'ajout', 'Par']

    for col_num in range(len(columns)):
        ws.write(row_num, col_num, columns[col_num], font_style) # at 0 row 0 column 

    # Sheet body, remaining rows
    font_style = xlwt.XFStyle()

    rows = HistoriqueProd.objects.filter(point_vente=pt_vente).order_by('-id')
    rows = rows.extra(select={'date_ajout_new': "to_char(date_ajout, 'DD/MM/YYYY')"}) 
    rows = rows.values_list('produit__designation', 'qte_ajoutee', 'produit__quantite', 'date_ajout_new', 'gerant__user__username')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)

    return response"""


@login_required(login_url='login_gerant')
def export_pdf_histo(request):
    """id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)
    lst_histo = HistoriqueProd.objects.filter(point_vente=pt_vente).order_by('-id')
    lst_histo = lst_histo.extra(select={'date_ajout_new': "to_char(date_ajout, 'DD/MM/YYYY')"}) 
    #lst_prod = lst_prod.values_list('produit__designation', 'qte_ajoutee', 'produit__quantite', 'date_ajout_new', 'gerant__user__username')

    template_path = 'dashboard_user/produits/pdf-output-histo.html'
    context = {'pt': pt_vente, 'lst_histo':lst_histo}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    #response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
    response['Content-Disposition'] = 'attachment; filename="historique_du_stock.pdf"'
    # find the template and render it.
    template = get_template(template_path)
    html = template.render(context)

    # create a pdf
    pisa_status = pisa.CreatePDF(
       html, dest=response, link_callback=link_callback)
    # if error then show some funy view
    if pisa_status.err:
       return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response"""
