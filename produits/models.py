from organisations.models import Organisations
from django.db.models import fields
from django.db.models.deletion import CASCADE, SET_NULL
from categories.models import Categories
from points_affaire.models import PointsAffaires
from django.db import models
from administrateurs.models import Administrateurs
# Create your models here.




class Produits(models.Model):
    designation = models.CharField(max_length=100)
    #quantite = models.IntegerField()
    prix_unitaire = models.FloatField()
    date_add = models.DateTimeField(auto_now_add=True)
    categorie = models.ForeignKey(Categories, null=True, blank=True, on_delete=models.SET_NULL)
    image = models.ImageField(upload_to='products_img/', null=True, blank=True)
    admin = models.ForeignKey(Administrateurs, on_delete=models.DO_NOTHING)
    point_vente = models.ManyToManyField(PointsAffaires, through='QuantitePoint')
    org = models.ForeignKey(Organisations, on_delete=models.CASCADE)

    def __str__(self):
        return self.designation


#RELATION POINT D'AFFAIRE ET PRODUIT AVEC QUANTITE
class QuantitePoint(models.Model):
    qte_stock = models.IntegerField()
    produit = models.ForeignKey(Produits, null=True, blank=True, on_delete=models.SET_NULL)
    point = models.ForeignKey(PointsAffaires, null=True, blank=True, on_delete=models.SET_NULL)

    def __str__(self):
        return str(self.qte_stock)


#HISTORIQUE DU PRODUIT
class HistoProd(models.Model):
    produit = models.ForeignKey(Produits, null=True, blank=True, on_delete=models.SET_NULL)
    point = models.ForeignKey(PointsAffaires, null=True, blank=True, on_delete=models.SET_NULL)
    qte = models.IntegerField()
    admin = models.ForeignKey(Administrateurs, on_delete=models.DO_NOTHING)
    date_ajout = models.DateTimeField(auto_now_add=True)

