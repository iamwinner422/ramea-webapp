from administrateurs.models import Administrateurs
from organisations.models import Organisations
from django.shortcuts import render, get_object_or_404
from points_affaire.models import PointsAffaires
from gerants.models import Utilisateurs
from django.contrib.auth.decorators import login_required
from produits.models import Produits
from services.models import Services
from ventess.models import Ventes
from prestation.models import Prestations
from clients.models import Clients
from django.db.models import Count, Sum 
from datetime import date

# Create your views here.
@login_required(login_url='login_admin')
def index(request):
    today = date.today()
    #admin_profile = Administrateurs.objects.get(user=request.user)
    admin_profile = get_object_or_404(Administrateurs, user=request.user)
    request.session['admin_id'] = admin_profile.id
    request.session['admin_org'] = admin_profile.organisation_id

    #org =  Organisations.objects.get(id=admin_profile.organisation_id)
    org =  get_object_or_404(Organisations, id=admin_profile.organisation_id)
    #RECUPERATION DES INFOS APERCU
    nb_point = PointsAffaires.objects.filter(org_id=admin_profile.organisation_id).count()
    nb_gerant = Utilisateurs.objects.filter(organisation_id=admin_profile.organisation_id).count()
    nb_prod = Produits.objects.filter(org_id=admin_profile.organisation_id).count()
    nb_serv = Services.objects.filter(org_id=admin_profile.organisation_id).count()
    nb_vte = Ventes.objects.filter(org_id=admin_profile.organisation_id).count()
    nb_prest = Prestations.objects.filter(org_id=admin_profile.organisation_id).count()
    nb_clt = Clients.objects.filter(org_id=admin_profile.organisation_id).count()
    #TOP DES CLIENTS
    top_clt_vente = Clients.objects.filter(org=org, ventes__org=org).values('id','nom', 'prenoms', 'point_vente__nom').annotate(montant=Sum('ventes__montant_net')).order_by('-montant', 'nom')[:10] #PAR MONTANT DE L'ACHAT

    #TOP DES CLIENTS 
    top_clt_prest = Clients.objects.filter(org=org, prestations__org=org).values('id','nom', 'prenoms', 'point_vente__nom').annotate(montant=Sum('prestations__total_prestation')).order_by('-montant', 'nom')[:10] #PAR MONTANT DE LA PRESTATION
 
    #PRODUIT LES PLUS VENDUS DE TOUTE L'ORGANISATION DU JOUR
    most_sell_j = Produits.objects.filter(org=org, ventes__org=org, ventes__date_vente__year=today.year, ventes__date_vente__month=today.month, ventes__date_vente__day=today.day).values('id','designation', 'ventes__point_vente__nom').annotate(qte=Sum('produitvente__qte_cmdee')).order_by('-qte')[:10]
    
    #PRODUIT LES PLUS VENDUS DE TOUTE L'ORGANISATION DU MOIS
    most_sell_m = Produits.objects.filter(org=org, ventes__org=org, ventes__date_vente__year=today.year, ventes__date_vente__month=today.month).values('id','designation', 'ventes__point_vente__nom').annotate(qte=Sum('produitvente__qte_cmdee')).order_by('-qte')[:10]

    #TOP DES VENDEURS PAR POINT DE VENTE/MOIS SELON LE NOMBRE DE VENTE
    top_vendeur_m_p = Utilisateurs.objects.filter(organisation=org, ventes__org=org, ventes__date_vente__year=today.year, ventes__date_vente__month=today.month).values('id', 'user__last_name', 'user__first_name', 'ventes__point_vente__nom').annotate(nb=Count('ventes__gerant')).order_by('-nb')[:10]

    #TOP DES VENDEURS PAR POINT DE VENTE/MOIS SELON LE NOMBRE DE PRESTATION
    top_vendeur_m_s = Utilisateurs.objects.filter(organisation=org, prestations__org=org, prestations__date_prestation__year=today.year, prestations__date_prestation__month=today.month).values('id', 'user__last_name', 'user__first_name', 'prestations__point_vente__nom').annotate(nb=Count('prestations__gerant')).order_by('-nb')[:10]

    #TOP DES SERVICES DU MOIS
    top_serv_m = Services.objects.filter(org=org, prestations__org=org, prestations__date_prestation__year=today.year, prestations__date_prestation__month=today.month).values('id','nom', 'prestations__point_vente__nom').annotate(nb=Count('prestations__service')).order_by('-nb')[:10]

    #TOP DES SERVICES DU JOUR
    top_serv_j = Services.objects.filter(org=org, prestations__org=org, prestations__date_prestation__year=today.year, prestations__date_prestation__month=today.month, prestations__date_prestation__day=today.day).values('id','nom', 'prestations__point_vente__nom').annotate(nb=Count('prestations__service')).order_by('-nb')[:10]

    #CLASSEMENT DES POINTS DE VENTE PAR VENTE #DU JOUR
    top_pdv_j = PointsAffaires.objects.filter(org=org, ventes__org=org, ventes__date_vente__year=today.year, ventes__date_vente__month=today.month, ventes__date_vente__day=today.day).values('id', 'nom').annotate(chiffre=Sum('ventes__montant_net')).order_by('-chiffre')[:10]

    #CLASSEMENT DES POINTS DE VENTE PAR VENTE #DU MOIS    
    top_pdv_m = PointsAffaires.objects.filter(org=org, ventes__org=org, ventes__date_vente__year=today.year, ventes__date_vente__month=today.month).values('id', 'nom').annotate(chiffre=Sum('ventes__montant_net')).order_by('-chiffre')[:10]

    #CLASSEMENT DES POINTS DE VENTE PAR VENTE #DE L'ANNEE
    #top_pdv_a = PointsAffaires.objects.filter(org=org, ventes__org=org, ventes__date_vente__year=today.year).values('id', 'nom').annotate(chiffre=Sum('ventes__montant_net')).order_by('-chiffre')[:5]
    
    
    #LISTE DES PRESTATION
    lst_prest = Prestations.objects.filter(org=org).order_by('-id')[:7]


    context = {
        'org': org,
        'nb_point':nb_point,
        'nb_gerant': nb_gerant,
        'nb_prod':nb_prod,
        'nb_serv':nb_serv,
        'nb_vte':nb_vte,
        'nb_prest':nb_prest,
        'top_clt_vente':top_clt_vente,
        'top_clt_prest':top_clt_prest,
        'most_sell_j':most_sell_j,
        'lst_prest':lst_prest,
        'top_pdv_m':top_pdv_m,
        'top_pdv_j':top_pdv_j,
        'most_sell_m': most_sell_m,
        'top_vendeur_m_s':top_vendeur_m_s,
        'top_vendeur_m_p':top_vendeur_m_p,
        'top_serv_m':top_serv_m,
        'top_serv_j':top_serv_j,
        'nb_clt':nb_clt,
    }
    return render(request, 'dashboard/layouts/index.html', context)