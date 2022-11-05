from ventess.models import ProduitVente, Ventes, HistoProdVte
from services.models import Services
from django.db import models 
from django.db.models import Count, Sum 
from points_affaire.models import PointsAffaires
from points_affaire.forms import FormNewPoint
from django.shortcuts import redirect, render, get_object_or_404
from organisations.models import Organisations
from django.contrib.auth.decorators import login_required
from gerants.forms import CreateUserForm
from gerants.forms import UserProfilFormNew
from gerants.models import Utilisateurs
from produits.models import HistoProd, Produits, QuantitePoint
from clients.models import Clients
import os
from django.conf import settings
from django.template.defaultfilters import truncatechars
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders
import json
#import xlwt
from prestation.models import Prestations
from datetime import date
# Create your views here.



@login_required(login_url='login_admin')
def index(request):
    #NOM DE L'ORGANISATION
    id_admin =  request.session['admin_id']
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    #FORM DU GERANT
    form_gerant = CreateUserForm()
    profile_form = UserProfilFormNew()

    #NOUVEAU POINT
    if request.method == 'POST':
        form = FormNewPoint(request.POST)

        if form.is_valid():
            #INFORMATIONS DU POINT DE VENTE
            lnom = request.POST.get('nom')
            tel = request.POST.get('telephone_point')
            adr = request.POST.get('adresse')
            point = PointsAffaires(nom=lnom, telephone_point=tel, admin_id=id_admin, org_id=id_org, adresse=adr)
            point.save() #POINT CREE

            #SI LE USER VEUT AJOUTER UN VENDEUR
            add_vendeur = int(request.POST.get('add_vendor'))
            if add_vendeur == 1:
                form_gerant = CreateUserForm(request.POST)
                profile_form = UserProfilFormNew(request.POST)

                if form_gerant.is_valid() and profile_form.is_valid():
                    # INFORMATION SUR LE PREMIER GERANT
                    tele = request.POST.get('telephone')
                    leuser = form_gerant.save()  # UTILISATEUR PAR DEFAUT
                    Utilisateurs.objects.create(user=leuser, telephone=tele, admin_id=id_admin, organisation_id=id_org, point_vente=point)

            return redirect('index_points')
    else:
        form = FormNewPoint()

    #LISTE DES POINTS ET RECHERCHE

    if 'query' in request.GET:
        search = request.GET['query']
        liste_points = PointsAffaires.objects.filter(models.Q(nom__icontains=search, org_id=id_org) | models.Q(telephone_point__icontains=search,org_id=id_org))
    else:
        liste_points = PointsAffaires.objects.order_by('-id').filter(org_id=id_org)    

    context = {
        'form': form,
        'org': org,
        'lst_point': liste_points,
        'profile_form':profile_form,
        'form_gerant': form_gerant,
    }
    return render(request, 'point_affaires/index.html', context)



@login_required(login_url='login_admin')
def delete_point(request, id):
    point = get_object_or_404(PointsAffaires, id=id)
    point.delete()
    return redirect('index_points')


@login_required(login_url='login_admin')
def update_point(request, id):
    id_org = request.session['admin_org']
    org =  get_object_or_404(Organisations, id=id_org)

    point = get_object_or_404(PointsAffaires, id=id)
    if request.method == 'POST':
        form = FormNewPoint(request.POST, instance=point)
        if form.is_valid():
            form.save()
            return redirect('index_points')
    else:
        form = FormNewPoint(instance=point)
    
    context = {
        'form':form,
        'point': point,
        'org':org,
    }

    return render(request, 'point_affaires/update.html', context)

 
    ########DETAILS DU POINT DE VENTE
@login_required(login_url='login_admin')
def details_point(request, id):
    today = date.today()

    id_org = request.session['admin_org']
    org =  get_object_or_404(Organisations, id=id_org)

    point = get_object_or_404(PointsAffaires, id=id)

    #PRODUITS
    lst_prod = Produits.objects.filter(org_id=id_org, point_vente=point).order_by('designation').select_related()
    nb_prod = Produits.objects.filter(org_id=id_org, point_vente=point).count()
    
    request.session['point_prod_id'] = point.pk


    #SERVICES
    lst_serv = Services.objects.filter(org_id=id_org, point_vente=point).order_by('nom')
    nb_serv = Services.objects.filter(org_id=id_org, point_vente=point).count()

    #GERANTS
    lst_user = Utilisateurs.objects.order_by('user__last_name').filter(organisation_id=id_org, point_vente=point).select_related()
    nb_user = Utilisateurs.objects.filter(organisation_id=id_org, point_vente=point).select_related().count()
    
    #CLIENTS
    lst_clt = Clients.objects.filter(org_id=id_org, point_vente=point).order_by('nom')
    nb_clt = Clients.objects.filter(org_id=id_org, point_vente=point).count()

    #HISTOSTOCK
    lst_histo = HistoProd.objects.filter(point=point).order_by('-id')

    #VENTES
    lst_vte = Ventes.objects.filter(org_id=id_org, point_vente=point).order_by('-id')
    nb_vte = Ventes.objects.filter(org_id=id_org, point_vente=point).count()

    #PRESTATIONS
    lst_prest = Prestations.objects.filter(org_id=id_org, point_vente=point).order_by('date_prestation')
    nb_prest =  Prestations.objects.filter(org_id=id_org, point_vente=point).count()

    #STOCK SORTIE
    lst_histo_s = HistoProdVte.objects.filter(point=point).order_by('-id')

    # PRODUITS LES PLUS VENDUS
    most_sell = Produits.objects.filter(point_vente=point, ventes__point_vente=point).values('designation', 'id').annotate(qte=Sum('produitvente__qte_cmdee')).order_by('-qte')[:10]

    ######################################################################
    #CHART
    ######################################################################
    #QTE DES PRODUITS
    lbl_qte_prod = []
    data_qte_prod = []
    for prod in lst_prod:
        lbl_qte_prod.append(prod.designation)
        qtepoint = QuantitePoint.objects.get(produit=prod, point=point)
        qte = qtepoint.qte_stock
        data_qte_prod.append(qte)

    lbl_qte_prod_j = json.dumps(lbl_qte_prod)
    data_qte_prod_j = json.dumps(data_qte_prod)

    #PRODUIT LE PLUS VENDUS 7
    most_sell_m = Produits.objects.filter(point_vente=point, ventes__point_vente=point, org=org, ventes__org=org, ventes__date_vente__year=today.year, ventes__date_vente__month=today.month).values('designation').annotate(qte=Sum('produitvente__qte_cmdee')).order_by('-qte')[:7] #MOIS
    most_sell_a = Produits.objects.filter(point_vente=point, ventes__point_vente=point, org=org, ventes__org=org, ventes__date_vente__year=today.year).values('designation').annotate(qte=Sum('produitvente__qte_cmdee')).order_by('-qte')[:7] #ANNEE

    #TOP DES CLIENTS PAR NOMBRE D'ACHAT
    top_clt_nb_m = Clients.objects.filter(point_vente=point, org=org, ventes__point_vente=point, ventes__org=org, ventes__date_vente__year=today.year, ventes__date_vente__month=today.month).values('nom', 'prenoms').annotate(nb=Count('ventes')).order_by('-nb')[:7] ##PAR NOMBRE D'ACHAT
    top_clt_nb_a = Clients.objects.filter(point_vente=point, org=org, ventes__point_vente=point, ventes__org=org, ventes__date_vente__year=today.year).values('nom', 'prenoms').annotate(nb=Count('ventes')).order_by('-nb')[:7]
    
    #TOP DES CLIENTS PAR MONTANT D'ACHAT
    top_clt_mt_m =  Clients.objects.filter(point_vente=point, org=org, ventes__point_vente=point, ventes__org=org, ventes__date_vente__year=today.year, ventes__date_vente__month=today.month).values('nom', 'prenoms').annotate(montant=Sum('ventes__montant_net')).order_by('-montant')[:7]
    top_clt_mt_a =  Clients.objects.filter(point_vente=point, org=org, ventes__point_vente=point, ventes__org=org, ventes__date_vente__year=today.year).values('nom', 'prenoms').annotate(montant=Sum('ventes__montant_net')).order_by('-montant')[:7]



    lbl_most_sell_m = []
    data_most_sell_m = []

    lbl_most_sell_a = []
    data_most_sell_a = []

    lbl_top_clt_nb_m = []
    data_top_clt_nb_m = []

    lbl_top_clt_nb_a = []
    data_top_clt_nb_a = []

    lbl_top_clt_mt_m = []
    data_top_clt_mt_m = []

    lbl_top_clt_mt_a = []
    data_top_clt_mt_a = []


    for val in most_sell_m:
        lbl_most_sell_m.append(val['designation'])
        data_most_sell_m.append(val['qte'])

    for val in most_sell_a:
        lbl_most_sell_a.append(val['designation'])
        data_most_sell_a.append(val['qte'])

    for val in top_clt_nb_m:
        lbl_top_clt_nb_m.append(val['nom']+ " " + val['prenoms'])
        data_top_clt_nb_m.append(val['nb'])

    for val in top_clt_nb_a:
        lbl_top_clt_nb_a.append(val['nom']+ " " + val['prenoms'])
        data_top_clt_nb_a.append(val['nb'])
    
    for val in top_clt_mt_m:
        lbl_top_clt_mt_m.append(val['nom']+ " " + val['prenoms'])
        data_top_clt_mt_m.append(val['montant'])

    for val in top_clt_mt_a:
        lbl_top_clt_mt_a.append(val['nom']+ " " + val['prenoms'])
        data_top_clt_mt_a.append(val['montant'])


    lbl_most_sell_j_m = json.dumps(lbl_most_sell_m)
    data_most_sell_j_m = json.dumps(data_most_sell_m)

    lbl_most_sell_j_a = json.dumps(lbl_most_sell_a)
    data_most_sell_j_a = json.dumps(data_most_sell_a)

    lbl_top_clt_nb_m_j = json.dumps(lbl_top_clt_nb_m)
    data_top_clt_nb_m_j = json.dumps(data_top_clt_nb_m)

    lbl_top_clt_nb_a_j = json.dumps(lbl_top_clt_nb_a)
    data_top_clt_nb_a_j = json.dumps(data_top_clt_nb_a)

    lbl_top_clt_mt_m_j = json.dumps(lbl_top_clt_mt_m)
    data_top_clt_mt_m_j = json.dumps(data_top_clt_mt_m)

    lbl_top_clt_mt_a_j = json.dumps(lbl_top_clt_mt_a)
    data_top_clt_mt_a_j = json.dumps(data_top_clt_mt_a)


    context = {
        'pt':point,
        'org':org,
        'lst_prod': lst_prod,
        'nb_prod':nb_prod,
        'nb_serv': nb_serv,
        'lst_serv': lst_serv,
        'nb_user':nb_user,
        'lst_user':lst_user,
        'nb_clt': nb_clt,
        'lst_clt': lst_clt,
        'lst_histo': lst_histo,
        'nb_vte':nb_vte,
        'nb_prest':nb_prest,
        'lst_prest':lst_prest,
        'lst_vte':lst_vte,
        'lst_histo_s':lst_histo_s,
        'lbl_qte_prod': lbl_qte_prod_j,
        'data_qte_prod':data_qte_prod_j,
        'lbl_most_sell_m':lbl_most_sell_j_m,
        'data_most_sell_m':data_most_sell_j_m,
        'lbl_most_sell_a':lbl_most_sell_j_a,
        'data_most_sell_a':data_most_sell_j_a,
        'most_sell_m':most_sell_m,
        'most_sell_a':most_sell_a,
        'top_clt_nb_m':top_clt_nb_m,
        'top_clt_nb_a':top_clt_nb_a,
        'top_clt_mt_m':top_clt_mt_m,
        'top_clt_mt_a':top_clt_mt_a,
        'lbl_top_clt_nb_m':lbl_top_clt_nb_m_j,
        'data_top_clt_nb_m':data_top_clt_nb_m_j,
        'data_top_clt_nb_a':data_top_clt_nb_a_j,
        'lbl_top_clt_nb_a':lbl_top_clt_nb_a_j,
        'lbl_top_clt_mt_m':lbl_top_clt_mt_m_j,
        'data_top_clt_mt_m':data_top_clt_mt_m_j,
        'data_top_clt_mt_a':data_top_clt_mt_a_j,
        'lbl_top_clt_mt_a':lbl_top_clt_mt_a_j,
        'most_sell':most_sell,

        
    }
    return render(request, 'point_affaires/details.html', context)

@login_required(login_url='login_admin')
def retirer_produit(request, id, prod):
    #RETRAIT DU PRODUIT DU POINT DE VENTE
    #RECUPERATION DES INFOS
    point = get_object_or_404(PointsAffaires, id=id)
    produit = get_object_or_404(Produits, id=prod)

    produit.point_vente.remove(point)

    return redirect('details_point', id=id)


@login_required(login_url='login_admin')
def retirer_service(request, id, serv):
    #RETRAIT DU PRODUIT DU POINT DE VENTE
    #RECUPERATION DES INFOS
    point = get_object_or_404(PointsAffaires, id=id)
    serv = get_object_or_404(Services, id=serv)

    serv.point_vente.remove(point)

    return redirect('details_point', id=id)


@login_required(login_url='login_admin')
def retirer_client(request, id, point):
    client = get_object_or_404(Clients, id=id)

    client.delete()
    return redirect('details_point', id=point)


@login_required(login_url='login_admin')
def retirer_vente(request, id, point):
    vente = get_object_or_404(Ventes, id=id, point_vente_id=point)
    v = vente.produit
    #print(f"ICI FDP ######: {v}")
    vente.delete()
    return redirect('details_point', id=point)    
    

@login_required(login_url='login_admin')
def retirer_prestation(request, id, point):
    prest = get_object_or_404(Prestations, id=id, point_vente_id=point)
    
    prest.delete()
    return redirect('details_point', id=point) 


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
    org =  get_object_or_404(Organisations, id=id_org)
    lst_pt = PointsAffaires.objects.order_by('nom').filter(org_id=id_org)

    template_path = 'point_affaires/pdf-output.html'
    context = {'org': org, 'lst_pt':lst_pt}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    #response['Content-Disposition'] = 'attachment; filename="liste_des_services.pdf"'
    response['Content-Disposition'] = 'attachment; filename="liste_des_points_de_vente.pdf"'
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

    rows = PointsAffaires.objects.order_by('nom').filter(org_id=id_org).values_list('nom', 'telephone_point', 'adresse')
    for row in rows:
        row_num += 1
        for col_num in range(len(row)):
            ws.write(row_num, col_num, row[col_num], font_style)

    wb.save(response)"""

    return 
    
