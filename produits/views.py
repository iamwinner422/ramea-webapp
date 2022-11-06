from django.contrib import messages

from points_affaire.models import PointsAffaires
from django.db import models
from produits.models import HistoProd, Produits, QuantitePoint
from produits.forms import FormHistoProd, FormProduit, FormQuantitePoint
from django.shortcuts import get_object_or_404, redirect, render
from django.contrib.auth.decorators import login_required
from organisations.models import Organisations
from django.db.models import F, Sum, Count
from django.urls import reverse
from ventess.models import ProduitVente, Ventes
import datetime
import json
# from histo_prod.models import HistoriqueProd

import os
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders


# import xlwt


# Create your views here.
@login_required(login_url='login_admin')
def index_produits(request):
    id_org = request.session['admin_org']
    id_admin = request.session['admin_id']
    org = get_object_or_404(Organisations, id=id_org)

    if request.method == 'POST':
        form = FormProduit(request.POST, request.FILES, request=request)
        # QUANTITATIVE
        formQtePoint = FormQuantitePoint(request.POST)

        if form.is_valid() and formQtePoint.is_valid():
            design = request.POST.get('designation')
            prix = request.POST.get('prix_unitaire')
            qte = request.POST.get('qte_stock')
            cat = request.POST.get('categorie')
            img = request.FILES.get('image')
            # pt_vente = request.POST.getlist('point_vente')
            # pt_vente = form.cleaned_data['point_vente']
            # verification de la designation
            un_prod = Produits.objects.filter(designation=design, org=org)
            # print(un_prod)
            if un_prod is None or un_prod == "":
                prod = Produits(designation=design, prix_unitaire=prix, admin_id=id_admin, categorie_id=cat, image=img,
                            org_id=id_org)
                prod.save()

                for pt in request.POST.getlist('point_vente'):
                    qte_stock = QuantitePoint.objects.create(qte_stock=qte, point_id=int(pt), produit=prod)

                    # HISTORIQUE
                    HistoProd.objects.create(produit=prod, qte=qte, point_id=int(pt), admin_id=id_admin)

                return redirect('index_produits')
            else:
                messages.info(request, "Erreur! Le produit existe déjà.")
    else:
        form = FormProduit(request=request)
        formQtePoint = FormQuantitePoint()

    #################################
    if 'query' in request.GET:
        search = request.GET['query']
        lst_prod = Produits.objects.filter(
            models.Q(designation__icontains=search, org_id=id_org) | models.Q(prix_unitaire__icontains=search,
                                                                              org_id=id_org) | models.Q(
                categorie__nom__icontains=search, org_id=id_org))
    else:
        lst_prod = Produits.objects.order_by('-id').filter(org_id=id_org)

    ####HISTORIQUE DU STOCK
    lst_histo_prod = HistoProd.objects.filter(produit__org_id=id_org).order_by('-id')

    context = {
        'org': org,
        'form': form,
        # 'formAffect': formAffect,
        'lst_prod': lst_prod,
        'lst_histo_prod': lst_histo_prod,
        'formQtePoint': formQtePoint,
    }

    return render(request, 'produits/index.html', context)


@login_required(login_url='login_admin')
def delete_prod(request, id):
    prod = get_object_or_404(Produits, id=id)
    prod.delete()
    return redirect('index_produits')


@login_required(login_url='login_admin')
def update_prod(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    prod = get_object_or_404(Produits, id=id)
    if request.method == 'POST':
        form = FormProduit(request.POST, request.FILES, instance=prod, request=request)
        if form.is_valid():
            return redirect('index_produits')
    else:
        form = FormProduit(instance=prod, request=request)

    context = {
        'form': form,
        'org': org,
        'prod': prod,
    }

    return render(request, 'produits/update.html', context)


@login_required(login_url='login_admin')
def update_qte(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    prod = get_object_or_404(Produits, id=id)
    point_id = request.session['point_prod_id']
    point = get_object_or_404(PointsAffaires, id=point_id)
    qte_stock_point = QuantitePoint.objects.get(point=point, produit=prod)

    if request.method == 'POST':
        form = FormQuantitePoint(request.POST, instance=qte_stock_point)
        if form.is_valid():
            form.save()
            return redirect('details_point', id=point.pk)
    else:
        form = FormQuantitePoint(instance=qte_stock_point)

    context = {
        'org': org,
        'prod': prod,
        'point': point,
        'form': form,
    }
    return render(request, 'produits/update_qte.html', context)


@login_required(login_url='login_admin')
def details_produit(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    lbl_histo = []
    data_histo = []


    # RECUPERATION DU PRODUIT
    produit = get_object_or_404(Produits, id=id)
    request.session['id_produit'] = produit.pk
    lst_vte = Ventes.objects.filter(produit=produit, org=org)
    qte_vendue = ProduitVente.objects.filter(produit=produit, vente__org=org).aggregate(qte=Sum('qte_cmdee')).get('qte')

    #######LISTE DES ENTREES EN STOCK POUR CE PRODUIT
    lst_histo_prod = HistoProd.objects.filter(produit=produit).order_by('-id')


    def datetime_handler(x):
        if isinstance(x, datetime.datetime):
            #return x.__str__()
            return "{}/{}/{}".format(x.day, x.month, x.year)
        raise TypeError("Erreur!")

    for hst in lst_histo_prod:
        lbl_histo.append(hst.date_ajout)
        data_histo.append(hst.qte)

    lbl_histo_j = json.dumps(lbl_histo, default=datetime_handler)
    data_histo_j = json.dumps(data_histo)

    context = {
        'org': org,
        'prod': produit,
        'qte_vendue': qte_vendue,
        'lst_vte': lst_vte,
        'lst_histo_prod' : lst_histo_prod,
        'lbl_histo': lbl_histo_j,
        'data_histo': data_histo_j,

    }

    return render(request, 'produits/details.html', context)


@login_required(login_url='login_admin')
def update_stock(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)
    id_admin = request.session['admin_id']
    prod = get_object_or_404(Produits, id=id)

    if request.method == 'POST':
        form = FormHistoProd(request.POST, request=request)
        if form.is_valid():
            qte_add = request.POST.get('qte')
            pt_vente = request.POST.get('point')
            pt = PointsAffaires.objects.get(id=pt_vente)

            HistoProd.objects.create(produit=prod, qte=qte_add, point=pt, admin_id=id_admin)
            qte_stock_point = QuantitePoint.objects.get(point=pt, produit=prod)
            qte_stock_point.qte_stock = F('qte_stock') + int(qte_add)
            qte_stock_point.save()

            return redirect(reverse('update_stock_prod', kwargs={"id": prod.id}))
    else:
        form = FormHistoProd(request=request)

    #######LISTE DES ENTREES EN STOCK POUR CE PRODUIT
    lst_histo_prod = HistoProd.objects.filter(produit=prod).order_by('-id')

    context = {
        'org': org,
        'prod': prod,
        'form': form,
        'lst_histo_prod': lst_histo_prod,
    }
    return render(request, 'produits/stock.html', context)


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
    lst_prod = Produits.objects.order_by('designation').filter(org_id=id_org)

    template_path = 'produits/pdf-output.html'
    context = {'org': org, 'lst_prod': lst_prod}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    # response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
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


@login_required(login_url='login_admin')
def export_xls(request):
    id_org = request.session['admin_org']

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

    rows = Produits.objects.order_by('designation').filter(org_id=id_org).values_list('designation', 'quantite', 'prix_unitaire', 'categorie__nom')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)"""

    return response


@login_required(login_url='login_admin')
def export_pdf_histo(request):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)
    lst_histo = HistoProd.objects.filter(produit__org_id=id_org).order_by('-id')
    lst_histo = lst_histo.extra(select={'date_ajout_new': "to_char(date_ajout, 'DD/MM/YYYY')"})
    # lst_prod = lst_prod.values_list('produit__designation', 'qte_ajoutee', 'produit__quantite', 'date_ajout_new', 'gerant__user__username')

    template_path = 'produits/pdf-output-histo.html'
    context = {'org': org, 'lst_histo': lst_histo}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    # response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
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
    return response


@login_required(login_url='login_admin')
def export_xls_histo(request):
    id_org = request.session['admin_org']
    response = HttpResponse(content_type='application/ms-excel')
    response['Content-Disposition'] = 'attachment; filename="historique_du_stock.xls"'
    """
    wb = xlwt.Workbook(encoding='utf-8')
    ws = wb.add_sheet('Historique') # this will make a sheet named Users Data

    # Sheet header, first row
    row_num = 0
    
    font_style = xlwt.XFStyle()
    font_style.font.bold = True

    columns = ['Désignation', 'Quantité ajoutée', 'Quantité en stock', 'Date d\'ajout', 'Point de vente']

    for col_num in range(len(columns)):
        ws.write(row_num, col_num, columns[col_num], font_style) # at 0 row 0 column 

    # Sheet body, remaining rows
    font_style = xlwt.XFStyle()

    rows = HistoProd.objects.filter(produit__org_id=id_org).order_by('-id')
    rows = rows.extra(select={'date_ajout_new': "to_char(date_ajout, 'DD/MM/YYYY')"}) 
    rows = rows.values_list('produit__designation', 'qte', 'produit__point_vente__quantitepoint__qte_stock', 'date_ajout_new', 'point__nom')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)"""

    return response
