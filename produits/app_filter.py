from produits.models import Produits, QuantitePoint
from django.db.models.query import InstanceCheckMeta
from points_affaire.models import PointsAffaires
from django import template
from django.shortcuts import get_object_or_404
from ventess.models import ProduitVente
register = template.Library()

@register.filter(name='filter_prod')
def filter_prod(point, prod_id):
    point = get_object_or_404(PointsAffaires, nom=point)
    qte_stock_point = QuantitePoint.objects.get(point=point, produit_id=prod_id)
    qte_stock = qte_stock_point.qte_stock
    return qte_stock

@register.filter(name='filter_qte_cmdee')
def filter_qte_cmdee(produit, id_vte):
    produit = get_object_or_404(Produits, designation=produit)
    qte_obj = get_object_or_404(ProduitVente, produit=produit, vente_id=id_vte)
    qte_cmdee = qte_obj.qte_cmdee
    return qte_cmdee