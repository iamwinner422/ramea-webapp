from django.shortcuts import get_object_or_404, redirect, render,HttpResponse
from ventess.models import Ventes
from datetime import date
from organisations.models import Organisations
from django.contrib.auth.decorators import login_required
from produits.models import Produits
from points_affaire.models import PointsAffaires
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders
from django.template.loader import get_template, render_to_string
from django.conf import settings
import os
import datetime
import json
from weasyprint import HTML
import tempfile


# Create your views here.

@login_required(login_url='login_admin')
def index_vente(request):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)


    lst_vte = Ventes.objects.order_by('-id').filter(org=org)
    today = date.today()
    #lst_vte = Ventes.objects
    lst_vte_j = Ventes.objects.order_by('-id').filter(org=org, date_vente__year=today.year, date_vente__month=today.month, date_vente__day=today.day)#DU JOUR
    lst_vte_m = Ventes.objects.order_by('-id').filter(org=org, date_vente__year=today.year, date_vente__month=today.month)#DU MOIS
    lst_vte_a = Ventes.objects.order_by('-id').filter(org=org, date_vente__year=today.year)#DE L'ANNEE

    ######################################################################
    # CHART
    ######################################################################
    # QTE DES PRODUITS
    lbl_vte = []
    data_vte = []

    for vte in lst_vte:
        lbl_vte.append(vte.date_vente)
        data_vte.append(vte.montant_net)

    def datetime_handler(x):
        if isinstance(x, datetime.datetime):
            # return x.__str__()
            return "{}/{}/{}".format(x.day, x.month, x.year)
        raise TypeError("Erreur!")

    lbl_vte_j = json.dumps(lbl_vte, default=datetime_handler)
    data_vte_j = json.dumps(data_vte)

    context = {
        'org':org,
        'lst_vte':lst_vte,
        'lst_vte_j':lst_vte_j,
        'lst_vte_m':lst_vte_m,
        'lst_vte_a':lst_vte_a,
        'lbl_vte':lbl_vte_j,
        'data_vte':data_vte_j,
    }
    return render(request, 'ventes/index.html', context)


@login_required(login_url='login_admin')
def details_vente(request, id, point):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    vente = get_object_or_404(Ventes, point_vente_id=point, id=id, org=org)

    lst_prod = Produits.objects.filter(org=org, point_vente=point, ventes=vente).values('designation','produitvente__qte_cmdee', 'prix_unitaire').order_by('designation')

    context = { 
        'org': org,
        'vente': vente,
        'lst_prod':lst_prod
    }
    return render(request, 'ventes/details.html', context)


@login_required(login_url='login_admin')
def retirer_vente_v(request, id):
    vente = get_object_or_404(Ventes, id=id)
    v = vente.produit
    #print(f"ICI FDP ######: {v}")
    vente.delete()
    return redirect('index_vente_pnl')    
    

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
def export_pdf(request, id):
    id_org = request.session['admin_org']
    org = get_object_or_404(Organisations, id=id_org)

    vte = get_object_or_404(Ventes, id=id)
    pt_vente_id = vte.point_vente_id
    pt_vente =  get_object_or_404(PointsAffaires, id=pt_vente_id)

    lst_prod = Produits.objects.filter(point_vente=pt_vente, ventes=vte, org=org).values('designation','produitvente__qte_cmdee', 'prix_unitaire').order_by('designation')
    #template_path = 'ventes/facture.html'

    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename="facture_' + str(vte.pk)+'_' + str(date.today()) +'.pdf"'
    response['Content-Transfer-Encoding'] = 'binary'

    # find the template and render it.
    context = {
        'pt':pt_vente,
        'vte':vte,
        'lst_prod':lst_prod,
    }
    html_string = render_to_string('ventes/facture.html', context)
    html = HTML(string=html_string, base_url=request.build_absolute_uri())
    result = html.write_pdf()

    with tempfile.NamedTemporaryFile(delete=True) as output:
        output.write(result)
        output.flush()

        #output=open(output.name, 'rb')
        output.seek(0)
        response.write(output.read())

    #template = get_template(template_path)
    #html = template.render(context)

    # create a pdf
    #pisa_status = pisa.CreatePDF(html, dest=response, link_callback=link_callback)
    # if error then show some funy view
    #if pisa_status.err:
       #return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response 