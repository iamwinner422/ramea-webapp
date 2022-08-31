from django.http.response import HttpResponse, JsonResponse
from produits.models import Produits, QuantitePoint
from ventes.forms import FormProdVente, FormProduitVente
from django.shortcuts import get_object_or_404, render
from django.contrib.auth.decorators import login_required
from points_affaire.models import PointsAffaires
from ventes.models import Ventes
# Create your views here.
from django.core.serializers import serialize
import simplejson


@login_required(login_url='login_gerant')
def index_vente(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente =  PointsAffaires.objects.get(id=id_pt_vente)

    context = {
        'point_vente':pt_vente,
    }
    return render(request, 'dashboard_user/ventes/index.html', context)




@login_required(login_url='login_gerant')
def new_vente(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente =  PointsAffaires.objects.get(id=id_pt_vente)

    if request.method == 'POST':
        form = FormProdVente(request, request=request)
        formP = FormProduitVente(request)
    else:
        form = FormProdVente(request=request)
        formP = FormProduitVente()

    context = {
        'point_vente':pt_vente,
        'form': form,
        'formP': formP,
    }
    return render(request, 'dashboard_user/ventes/new.html', context)

@login_required(login_url='login_gerant')
def nouvelle_vente(request):
    id_pt_vente = request.session['point_vente_id']
    pt_vente =  PointsAffaires.objects.get(id=id_pt_vente)

    if request.method == "POST":
        if request.is_ajax():
            id_client = request.POST['id_client']
            lst_prod = request.POST['panier']
            taux_taxe = request.POST['taux_taxe']
            taux_remise = request.POST['taux_remise']
            montant_taxe = request.POST['montant_taxe']
            montant_reduction =request.POST['montant_reduction']
            montant_brut = request.POST['montant_brut']
            montant_net = request.POST['montant_net']

            #CREATION DE LA VENTE
            neww_vente = Ventes()
#INFO DU PRODUIT
@login_required(login_url='login_gerant')
def getInfoProd(request,id):
    id_pt_vente = request.session['point_vente_id']
    pt_vente =  PointsAffaires.objects.get(id=id_pt_vente)
    if request.method == "GET":
       if request.is_ajax():
            #id_prod = request.GET.get("produit")
            #id_pt = request.GET.get("pt")
            produit = get_object_or_404(Produits, id=id)
            qte = get_object_or_404(QuantitePoint, produit=produit, point=pt_vente) 
            #print(id)  
            #data = serialize("json", [produit], fields=('prix_unitaire', 'designation'))
            data_prod = serialize("json", [produit])
            dt = simplejson.loads(data_prod)
            data_prod = dt[0]['fields']
            data_qte = serialize("json", [qte])
            dt_1 = simplejson.loads(data_qte)
            data_qte = dt_1[0]['fields']
            data = [data_prod, data_qte]
            return JsonResponse(data, safe=False, content_type='application/json')