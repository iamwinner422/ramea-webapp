from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from points_affaire.models import PointsAffaires
from .forms import FormPrestation, FormServicePrestation
import json
from django.http.response import HttpResponse, JsonResponse
from .models import Prestations, ServicePrestation
from datetime import date
from services.models import Services
from gerants.models import Utilisateurs



# Create your views here.
@login_required(login_url='login_gerant')
def index(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = get_object_or_404(PointsAffaires, id=id_pt_vente)

    lst_prest = Prestations.objects.order_by('-id').filter(point_vente=pt_vente) #tout les enregistrements
    today = date.today()
    lst_prest_j = Prestations.objects.order_by('-id').filter(point_vente=pt_vente, date_prestation__year=today.year, date_prestation__month=today.month, date_prestation__day=today.day) #DU JOUR
    lst_prest_m = Prestations.objects.order_by('-id').filter(point_vente=pt_vente, date_prestation__year=today.year, date_prestation__month=today.month) #DU MOIS
    lst_prest_a = Prestations.objects.order_by('-id').filter(point_vente=pt_vente, date_prestation__year=today.year) #DE L'ANNEE


    context = { 
        'point_vente':pt_vente,
        'lst_prest': lst_prest,
        'lst_prest_j':lst_prest_j,
        'lst_prest_m':lst_prest_m,
        'lst_prest_a':lst_prest_a,
    } 

    return render(request, 'dashboard_user/prestations/index.html', context)


@login_required(login_url='login_gerant')
def new_prestation(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente =  PointsAffaires.objects.get(id=id_pt_vente)
    
    
    if request.method == 'POST':
        form = FormPrestation(request, request=request)
        formServ = FormServicePrestation(request)
    else:
        form = FormPrestation(request=request)
        formServ = FormServicePrestation()
    context = {
        'point_vente':pt_vente,
        'form':form,
        'formServ':formServ,
    }

    return render(request, 'dashboard_user/prestations/new.html', context)

@login_required(login_url='login_gerant')
def nouvelle_prestation(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente =  PointsAffaires.objects.get(id=id_pt_vente)
    id_gerant = request.session['gerant_id']
    gerant = get_object_or_404(Utilisateurs, id=id_gerant)
    org_id = gerant.organisation_id


    success = "Prestation ajoutée!"

    if request.method == "POST":
        if request.is_ajax():
            id_client = request.POST['id_client']
            lst_serv = json.loads(request.POST.get('liste'))
            total = request.POST['total_prest']

            #CREATION DE LA PRESTATION
            n_prest = Prestations(total_prestation=total, client_id=id_client, gerant_id=id_gerant, point_vente_id=id_pt_vente, org_id=org_id)
            n_prest.save()

            for elm in lst_serv:
                servprest = ServicePrestation(montant_prestation=elm['montant'], service_id=elm['id'], prestation=n_prest)
                servprest.save()
                
            return HttpResponse(success)


@login_required(login_url='login_gerant')
def details_prestation(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente =  PointsAffaires.objects.get(id=id_pt_vente)
     
    prestation = get_object_or_404(Prestations, point_vente=pt_vente, id=id)
    lst_serv = Services.objects.filter(point_vente=pt_vente, prestations=prestation).values('nom', 'serviceprestation__montant_prestation').order_by('nom')
 
    context = {
        'point_vente': pt_vente,
        'prestation': prestation,
        'lst_serv':lst_serv,
    }
    return render(request, 'dashboard_user/prestations/details.html', context)