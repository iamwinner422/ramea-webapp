from django.db import models
from django.db.models.deletion import DO_NOTHING
from produits.models import Produits
from points_affaire.models import PointsAffaires
from gerants.models import Utilisateurs
# Create your models here.
"""class HistoriqueProd(models.Model):
    produit = models.ForeignKey(Produits, on_delete=models.SET_NULL, unique=False)
    qte_ajoutee = models.IntegerField()
    date_ajout = models.DateTimeField(auto_now_add=True)
    point_vente = models.ForeignKey(PointsAffaires, on_delete=models.DO_NOTHING)
    gerant = models.ForeignKey(Utilisateurs, on_delete=models.DO_NOTHING)
"""