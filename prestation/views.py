from django.contrib import messages
from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required

from clients.models import Clients
from points_affaire.models import PointsAffaires
from .forms import FormPrestation, FormServicePrestation
import json
from django.http.response import HttpResponse, JsonResponse
from .models import Prestations, ServicePrestation
from datetime import date
from services.models import Services
from gerants.models import Utilisateurs
from django.template.loader import get_template, render_to_string
from clients.forms import FormClient
from weasyprint import HTML
import tempfile


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
        formClt = FormClient(request)
    else:
        form = FormPrestation(request=request)
        formServ = FormServicePrestation()
        formClt = FormClient()
    context = {
        'point_vente':pt_vente,
        'form':form,
        'formServ':formServ,
        'form_clt': formClt,
    }

    return render(request, 'dashboard_user/prestations/new.html', context)

@login_required(login_url='login_gerant')
def nouvelle_prestation(request):
    global id_client
    id_pt_vente = request.session['point_vente_id']
    pt_vente = PointsAffaires.objects.get(id=id_pt_vente)
    id_gerant = request.session['gerant_id']
    gerant = get_object_or_404(Utilisateurs, id=id_gerant)
    org_id = gerant.organisation_id


    success = "Prestation ajoutée!"

    if request.method == "POST":
        if request.is_ajax():

            # SI LE USER VEUT AJOUTER UN client
            add_clt = int(request.POST['add_client'])

            if add_clt == 1:

                nom = request.POST['nom']
                pnoms = request.POST['prenoms']
                tel_p = request.POST['telephone_p']
                # VERIFICATION DES ELEMENT
                if nom != "" and pnoms != "" and tel_p != "":
                    if len(tel_p) != 8 and tel_p.isdigit == False:
                        messages.info(request, "Le numéro de téléphone saisi est incorrect!")
                    elif len(tel_p) == 8 and tel_p.isdigit == False:
                        messages.info(request, "Le numéro de téléphone saisi est incorrect!")
                    elif len(tel_p) != 8 and tel_p.isdigit == True:
                        messages.info(request, "Le numéro de téléphone saisi est incorrect!")
                    else:
                        client = Clients.objects.create(nom=nom, prenoms=pnoms, telephone_p=tel_p, point_vente=pt_vente,
                                                        gerant=gerant, org_id=org_id)
                        client.save()
                        id_client = client.id
                else:
                    messages.info(request, "Veuillez remplir tous les champs")

            elif add_clt == 0:
                id_client = request.POST['id_client']

            lst_serv = json.loads(request.POST.get('liste'))
            total = request.POST['total_prest']

            #CREATION DE LA PRESTATION
            n_prest = Prestations(total_prestation=total, client_id=id_client, gerant_id=id_gerant, point_vente_id=id_pt_vente, org_id=org_id)
            n_prest.save()
            prest_id = n_prest.id
            for elm in lst_serv:
                servprest = ServicePrestation(montant_prestation=elm['montant'], service_id=elm['id'], prestation=n_prest)
                servprest.save()
                
            return HttpResponse(prest_id)


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



@login_required(login_url='login_gerant')
def export_pdf(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = PointsAffaires.objects.get(id=id_pt_vente)

    prest = get_object_or_404(Prestations, id=id)
    lst_serv = Services.objects.filter(point_vente=pt_vente, prestations=prest).values('nom', 'serviceprestation__montant_prestation').order_by('nom')

    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename="facture_prestation_' + str(prest.pk) + '.pdf"'
    response['Content-Transfer-Encoding'] = 'binary'

    #   template_path = 'dashboard_user/ventes/facture.html'

    # find the template and render it.
    context = {
        'pt': pt_vente,
        'prest': prest,
        'lst_serv':lst_serv,
    }
    html_string = render_to_string('dashboard_user/prestations/facture.html', context)
    html = HTML(string=html_string, base_url=request.build_absolute_uri())
    result = html.write_pdf()

    with tempfile.NamedTemporaryFile(delete=True) as output:
        output.write(result)
        output.flush()

        # output=open(output.name, 'rb')
        output.seek(0)
        response.write(output.read())

    # template = get_template(template_path)
    # html = template.render(context)

    # create a pdf
    # pisa_status = pisa.CreatePDF(html, dest=response, link_callback=link_callback)
    # if error then show some funy view
    # if pisa_status.err:
    #   return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response
