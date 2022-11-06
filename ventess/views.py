from django.http.response import HttpResponse, JsonResponse
from produits.models import Produits, QuantitePoint
from ventess.forms import FormProdVente, FormProduitVente
from clients.forms import FormClient
from clients.models import Clients
from django.shortcuts import get_object_or_404, render, redirect
from django.contrib.auth.decorators import login_required
from points_affaire.models import PointsAffaires
from ventess.models import HistoProdVte, ProduitVente, Ventes
from django.db.models import F
from django.db import models
from django.contrib import messages
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders
from django.template.loader import get_template, render_to_string
from django.conf import settings
import os
from gerants.models import Utilisateurs
from django.core.serializers import serialize
import simplejson
import json
from datetime import date

from weasyprint import HTML
import tempfile


@login_required(login_url='login_gerant')
def index_vente(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = PointsAffaires.objects.get(id=id_pt_vente)

    lst_vte = Ventes.objects.order_by('-id').filter(point_vente=pt_vente)
    today = date.today()
    # lst_vte = Ventes.objects
    lst_vte_j = Ventes.objects.order_by('-id').filter(point_vente=pt_vente, date_vente__year=today.year,
                                                      date_vente__month=today.month,
                                                      date_vente__day=today.day)  # DU JOUR
    lst_vte_m = Ventes.objects.order_by('-id').filter(point_vente=pt_vente, date_vente__year=today.year,
                                                      date_vente__month=today.month)  # DU MOIS
    lst_vte_a = Ventes.objects.order_by('-id').filter(point_vente=pt_vente, date_vente__year=today.year)  # DE L'ANNEE

    context = {
        'point_vente': pt_vente,
        'lst_vte': lst_vte,
        'lst_vte_j': lst_vte_j,
        'lst_vte_m': lst_vte_m,
        'lst_vte_a': lst_vte_a,
    }
    return render(request, 'dashboard_user/ventes/index.html', context)


@login_required(login_url='login_gerant')
def new_vente(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = PointsAffaires.objects.get(id=id_pt_vente)

    if request.method == 'POST':
        form = FormProdVente(request, request=request)
        formP = FormProduitVente(request)
        formClt = FormClient(request)
    else:
        form = FormProdVente(request=request)
        formP = FormProduitVente()
        formClt = FormClient()

    context = {
        'point_vente': pt_vente,
        'form': form,
        'formP': formP,
        'form_clt': formClt,
    }
    return render(request, 'dashboard_user/ventes/new.html', context)


@login_required(login_url='login_gerant')
def details_vente(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = PointsAffaires.objects.get(id=id_pt_vente)

    vente = get_object_or_404(Ventes, point_vente=pt_vente, id=id)
    # lst_prod = ProduitVente.objects.filter(vente=vente)
    lst_prod = Produits.objects.filter(point_vente=pt_vente, ventes=vente).values('designation',
                                                                                  'produitvente__qte_cmdee',
                                                                                  'prix_unitaire').order_by(
        'designation')

    context = {
        'point_vente': pt_vente,
        'vente': vente,
        'lst_prod': lst_prod
    }
    return render(request, 'dashboard_user/ventes/details.html', context)


@login_required(login_url='login_gerant')
def nouvelle_vente(request):
    global id_client
    id_pt_vente = request.session['point_vente_id']
    pt_vente = PointsAffaires.objects.get(id=id_pt_vente)
    id_gerant = request.session['gerant_id']
    gerant = get_object_or_404(Utilisateurs, id=id_gerant)
    org_id = gerant.organisation_id

    success = "Vente ajoutée!"
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

            lst_prod = json.loads(request.POST.get('panier'))
            net_ccial = request.POST['net_commercial']
            taux_remise = request.POST['taux_remise']
            taux_taxe = request.POST['taux_taxe']
            montant_taxe = request.POST['montant_taxe']
            montant_reduction = request.POST['montant_reduction']
            montant_brut = request.POST['montant_brut']
            montant_net = request.POST['montant_net']

            # CREATION DE LA VENTE
            neww_vente = Ventes(montant_brut=montant_brut, montant_net=montant_net, taxe=montant_taxe,
                                taux_taxe=taux_taxe, remise=montant_reduction, taux_remise=taux_remise,
                                client_id=id_client, gerant_id=id_gerant, point_vente_id=id_pt_vente,
                                net_ccial=net_ccial, org_id=org_id)
            neww_vente.save()
            vente_id = neww_vente.id
            # print(f"ICI C4EST PARIS I:{lst_prod}")
            for elm in lst_prod:
                prodvente = ProduitVente(qte_cmdee=elm['qte_cmdee'], produit_id=elm['id'], vente=neww_vente)
                # print(f"ICI C4EST PARIS:{elm}")
                # CREATION DE L'HISTORIQUE
                prodvente.save()

                HistoProdVte.objects.create(produit_id=elm['id'], qte=elm['qte_cmdee'], point=pt_vente,
                                            gerant_id=id_gerant)
            # lurl = '/dashboard/ventes/print/' + str(vente_id)
            return HttpResponse(vente_id)


# INFO DU PRODUIT
@login_required(login_url='login_gerant')
def getInfoProd(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = PointsAffaires.objects.get(id=id_pt_vente)
    if request.method == "GET":
        if request.is_ajax():
            # id_prod = request.GET.get("produit")
            # id_pt = request.GET.get("pt")
            produit = get_object_or_404(Produits, id=id)
            qte = get_object_or_404(QuantitePoint, produit=produit, point=pt_vente)
            # print(id)
            # data = serialize("json", [produit], fields=('prix_unitaire', 'designation'))
            data_prod = serialize("json", [produit])
            dt = simplejson.loads(data_prod)
            data_prod = dt[0]['fields']
            data_qte = serialize("json", [qte])
            dt_1 = simplejson.loads(data_qte)
            data_qte = dt_1[0]['fields']
            data = [data_prod, data_qte]
            return JsonResponse(data, safe=False, content_type='application/json')


# DEDUCTION DE LA QTE CMDEE DU STOCK
@login_required(login_url='login_gerant')
def susProdQte(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = PointsAffaires.objects.get(id=id_pt_vente)
    success = "ok"
    if request.method == "GET":
        if request.is_ajax():
            produit = get_object_or_404(Produits, id=id)  # RECUPERATION DU PRODUIT
            qte_cmdee = request.GET['qte']  # QTE COMMANDEE

            qte = get_object_or_404(QuantitePoint, produit=produit, point=pt_vente)  ##RECUPERTATION

            qte.qte_stock -= int(qte_cmdee)  # DEDUCTION
            qte.save()
            return HttpResponse(success)


@login_required(login_url='login_gerant')
def addProdQte(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = PointsAffaires.objects.get(id=id_pt_vente)
    success = "ok"
    if request.method == "GET":
        if request.is_ajax():
            produit = get_object_or_404(Produits, id=id)  # RECUPERATION DU PRODUIT
            qte_cmdee = request.GET['qte']  # QTE COMMANDEE

            qte = get_object_or_404(QuantitePoint, produit=produit, point=pt_vente)  ##RECUPERTATION

            qte.qte_stock += int(qte_cmdee)  # DEDUCTION
            qte.save()
            return HttpResponse(success)


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


@login_required(login_url='login_gerant')
def export_pdf(request, id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente = PointsAffaires.objects.get(id=id_pt_vente)

    vte = get_object_or_404(Ventes, id=id)
    lst_prod = Produits.objects.filter(point_vente=pt_vente, ventes=vte).values('designation',
                                                                                'produitvente__qte_cmdee',
                                                                                'prix_unitaire').order_by('designation')

    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename="facture_vente_' + str(vte.pk)+'_' + str(date.today()) + '.pdf"'
    response['Content-Transfer-Encoding'] = 'binary'

    #   template_path = 'dashboard_user/ventes/facture.html'

    # find the template and render it.
    context = {
        'pt': pt_vente,
        'vte': vte,
        'lst_prod': lst_prod,
    }
    html_string = render_to_string('dashboard_user/ventes/facture.html', context)
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
