from produits.models import Produits, QuantitePoint
from clients.models import Clients
from points_affaire.models import PointsAffaires
from django.shortcuts import get_object_or_404, render
from django.contrib.auth.decorators import login_required
from gerants.models import Utilisateurs
from services.models import Services
from django.db.models import Count, Sum    
from ventess.models import HistoProdVte, Ventes, ProduitVente
from prestation.models import Prestations
import json
import datetime
# Create your views here.
 

@login_required(login_url="login_gerant")
def index(request):
    gerant_profile = get_object_or_404(Utilisateurs, user=request.user)
    request.session['gerant_id'] = gerant_profile.id
    request.session['gerant_org'] = gerant_profile.organisation_id
    request.session['point_vente_id'] = gerant_profile.point_vente_id

    point_vente = get_object_or_404(PointsAffaires, id=gerant_profile.point_vente_id)
    
    #APERCU
    nb_clt = Clients.objects.filter(point_vente=gerant_profile.point_vente_id).count()
    nb_prod = Produits.objects.filter(point_vente=gerant_profile.point_vente_id).count()
    lst_prod = Produits.objects.filter(point_vente=gerant_profile.point_vente_id).order_by('-id')[:5]
    lst_serv = Services.objects.filter(point_vente=gerant_profile.point_vente_id).order_by('-id')[:5]
    nb_serv = Services.objects.filter(point_vente=gerant_profile.point_vente_id).count()
    nb_vte =  Ventes.objects.filter(point_vente_id=gerant_profile.point_vente_id).count()
    lst_vte = Ventes.objects.filter(point_vente_id=gerant_profile.point_vente_id).order_by('-date_vente')[:10]
    nb_vte_1 =  lst_vte.__len__()
    #TOP DES CLIENTS
    top_clt_nb = Clients.objects.filter(point_vente=gerant_profile.point_vente_id, ventes__point_vente=gerant_profile.point_vente_id).values('id','nom', 'prenoms').annotate(nb=Count('ventes')).order_by('-nb')[:5] ##PAR NOMBRE D'ACHAT
    top_clt_montant = Clients.objects.filter(point_vente=gerant_profile.point_vente_id, ventes__point_vente=gerant_profile.point_vente_id).values('id','nom', 'prenoms').annotate(montant=Sum('ventes__montant_net')).order_by('-montant', 'nom')[:5] #PAR MONTANT DE L'ACHAT

    #vtss = Ventes.objects.filter(point_vente_id=gerant_profile.point_vente_id).values('produit__designation').annotate(qte_vde=Sum('produit__produitvente__qte_cmdee')).order_by('-qte_vde')
    most_sell = Produits.objects.filter(point_vente=gerant_profile.point_vente_id, ventes__point_vente=gerant_profile.point_vente_id).values('designation').annotate(qte=Sum('produitvente__qte_cmdee')).order_by('-qte')[:10]
    
    #STOCK #SORTIE DES PRODUITS
    #histo_stock = HistoProdVte.objects.filter(point=gerant_profile.point_vente_id).order_by('-date_ajout')[:10]

    #LISTE DES PRESTATION
    lst_prest = Prestations.objects.filter(point_vente=gerant_profile.point_vente_id).order_by('-id')[:7]
    
    ######################################################################
    #CHART
    ######################################################################
    #QTE DES PRODUITS
    lbl_vte = []
    data_vte = []
    lbl_most_sell = []
    data_most_sell = []
    lbl_prod = []
    data_prod = []


    for vte in lst_vte:
        lbl_vte.append(vte.date_vente)  
        data_vte.append(vte.montant_net)

    for val in most_sell:
        #print(f"ICI FDP: {val['designation']}")
        lbl_most_sell.append(val['designation'])
        data_most_sell.append(val['qte'])
    
    for prod in lst_prod:
        lbl_prod.append(prod.designation)
        qtepoint = get_object_or_404(QuantitePoint, produit=prod, point=gerant_profile.point_vente_id)
        data_prod.append(qtepoint.qte_stock)

    def datetime_handler(x):
        if isinstance(x, datetime.datetime):
            #return x.__str__()
            return "{}/{}/{}".format(x.day, x.month, x.year)
        raise TypeError("Erreur!")

    lbl_vte_j = json.dumps(lbl_vte, default=datetime_handler)
    data_vte_j = json.dumps(data_vte)

    lbl_most_sell_j = json.dumps(lbl_most_sell)
    data_most_sell_j = json.dumps(data_most_sell)
    
    lbl_prod_j = json.dumps(lbl_prod)
    data_prod_j = json.dumps(data_prod)

    context = {
        'point_vente':point_vente,
        'nb_clt':nb_clt,
        'nb_prod':nb_prod,
        'nb_serv': nb_serv,
        'nb_vte': nb_vte,
        'most_sell':most_sell,
        'lbl_vte':lbl_vte_j,
        'data_vte':data_vte_j,
        'data_most_sell': data_most_sell_j,
        'lbl_most_sell':lbl_most_sell_j,
        'data_prod': data_prod_j,
        'lbl_prod':lbl_prod_j,
        'lst_prod':lst_prod,
        'lst_serv': lst_serv,
        'top_clt_montant':top_clt_montant,
        'top_clt_nb':top_clt_nb,
        'nb_vte_1':nb_vte_1,
        'lst_prest':lst_prest,
    }

    return render(request, 'dashboard_user/layouts/index.html', context)

    ########DETAILS DU POINT DE VENTE
@login_required(login_url="login_gerant")
def details_point(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)

    #point = get_object_or_404(PointsAffaires, id=id)

    #PRODUITS
    lst_prod = Produits.objects.filter(point_vente=pt_vente).order_by('designation')
    nb_prod = Produits.objects.filter(point_vente=pt_vente).count()

    #SERVICES
    lst_serv = Services.objects.filter(point_vente=pt_vente).order_by('nom')
    nb_serv = Services.objects.filter(point_vente=pt_vente).count()

    #GERANTS
    lst_user = Utilisateurs.objects.order_by('user__last_name').filter(point_vente=pt_vente).select_related()
    nb_user = Utilisateurs.objects.filter(point_vente=pt_vente).select_related().count()
    
    #CLIENTS
    lst_clt = Clients.objects.filter(point_vente=pt_vente).order_by('nom')
    nb_clt = Clients.objects.filter(point_vente=pt_vente).count()

    #VENTES
    lst_vte = Ventes.objects.filter(point_vente=pt_vente).order_by('-id')
    nb_vte = Ventes.objects.filter(point_vente=pt_vente).count()

    #PRESTATIONS
    lst_prest = Prestations.objects.filter(point_vente=pt_vente).order_by('date_prestation')
    nb_prest =  Prestations.objects.filter(point_vente=pt_vente).count()
   
    context = {
        'pt':pt_vente,
        'point_vente':pt_vente,
        'lst_prod': lst_prod,
        'nb_prod':nb_prod,
        'nb_serv': nb_serv,
        'lst_serv': lst_serv,
        'nb_user':nb_user,
        'lst_user':lst_user,
        'nb_clt': nb_clt,
        'lst_clt': lst_clt,
        'nb_vte': nb_vte,
        'lst_vte':lst_vte,
        'nb_prest': nb_prest,
        'lst_prest':lst_prest,
    }
    return render(request, 'dashboard_user/layouts/details.html', context)


@login_required(login_url='login_gerant')
def details_gerant(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)
    id = request.session['gerant_id']
    gerant = get_object_or_404(Utilisateurs, id=id)
    #NOMBRE DE CLIENTS
    lst_clt = Clients.objects.filter(gerant=gerant).order_by('nom')
    nb_clt = Clients.objects.filter(gerant_id=id).count()
     #VENTES 
    lst_vte =  Ventes.objects.filter(point_vente=pt_vente, gerant=gerant).order_by('date_vente')
    nb_vte = Ventes.objects.filter(point_vente=pt_vente, gerant=gerant).count()

    lst_prest = Prestations.objects.filter(point_vente=pt_vente, gerant=gerant).order_by('date_prestation')
    nb_prest =  Prestations.objects.filter(point_vente=pt_vente, gerant=gerant).count()
    print(f"ICI FDP: {nb_clt}")
    context = {
        'point_vente': pt_vente,
        'gerant': gerant,
        'lst_clt': lst_clt,
        'nb_clt': nb_clt,
        'nb_vte': nb_vte,
        'lst_vte': lst_vte,
        'lst_prest':lst_prest,
        'nb_prest':nb_prest,

    }
    return render(request, "dashboard_user/layouts/details_gerant.html", context)