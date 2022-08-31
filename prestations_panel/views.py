from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from points_affaire.models import PointsAffaires
from prestation.models import Prestations
from datetime import date
from services.models import Services
from organisations.models import Organisations
# Create your views here.


@login_required(login_url='login_admin')
def index(request):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    lst_prest = Prestations.objects.order_by('-id').filter(org=org) #tout les enregistrements
    today = date.today()
    lst_prest_j = Prestations.objects.order_by('-id').filter(org=org, date_prestation__year=today.year, date_prestation__month=today.month, date_prestation__day=today.day) #DU JOUR
    lst_prest_m = Prestations.objects.order_by('-id').filter(org=org, date_prestation__year=today.year, date_prestation__month=today.month) #DU MOIS
    lst_prest_a = Prestations.objects.order_by('-id').filter(org=org, date_prestation__year=today.year) #DE L'ANNEE


    context = { 
        'org':org,
        'lst_prest': lst_prest,
        'lst_prest_j':lst_prest_j,
        'lst_prest_m':lst_prest_m,
        'lst_prest_a':lst_prest_a,
    } 

    return render(request, 'prestations/index.html', context)


@login_required(login_url='login_admin')
def details_prestation(request, id, point):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    prestation = get_object_or_404(Prestations, org=org, id=id, point_vente_id=point)
    lst_serv = Services.objects.filter(org=org, prestations=prestation, point_vente=point).values('nom', 'serviceprestation__montant_prestation').order_by('nom')
 
    context = {
        'org': org,
        'prestation': prestation,
        'lst_serv':lst_serv,
    }
    return render(request, 'prestations/details.html', context)


@login_required(login_url='login_admin')
def retirer_prestation_p(request, id):
    prest = get_object_or_404(Prestations, id=id)
    
    prest.delete()
    return redirect('index_prestation_pnl') 