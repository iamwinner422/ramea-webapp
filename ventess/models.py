from django.db.models.deletion import DO_NOTHING, SET_NULL
from points_affaire.models import PointsAffaires
from django.db import models
from clients.models import Clients
from produits.models import Produits
from gerants.models import Utilisateurs
from organisations.models import Organisations

 
# Create your models here.
 
class Ventes(models.Model):
    date_vente = models.DateTimeField(auto_now_add=True)
    montant_brut = models.FloatField()
    montant_net = models.FloatField()
    client = models.ForeignKey(Clients, null=True, blank=True, on_delete=models.SET_NULL)
    #client = models.ForeignKey(Clients, on_delete=models.SET("Client supprimé"))
    produit = models.ManyToManyField(Produits, through='ProduitVente')
    gerant = models.ForeignKey(Utilisateurs, on_delete=models.DO_NOTHING)
    taxe = models.FloatField()
    taux_taxe = models.IntegerField(default=18)
    remise = models.FloatField(null=True)
    taux_remise = models.IntegerField(default=0)
    net_ccial = models.FloatField()
    point_vente = models.ForeignKey(PointsAffaires, null=True, blank=True, on_delete=models.SET_NULL)
    org = models.ForeignKey(Organisations, on_delete=models.DO_NOTHING)



#RELATION VENTE - PRODUIT
class ProduitVente(models.Model):
    qte_cmdee = models.IntegerField()
    produit = models.ForeignKey(Produits, null=True, blank=True, on_delete=models.SET_NULL)
    vente = models.ForeignKey(Ventes, null=True, blank=True, on_delete=models.SET_NULL) #A LA SUPPRESSION D'UNE VENTE ON AFFECTE NULL
    


    def __str__(self):
        return str(self.qte_cmdee)



#HISTORIQUE DU PRODUIT
class HistoProdVte(models.Model):
    produit = models.ForeignKey(Produits, null=True, blank=True, on_delete=models.SET_NULL)
    point = models.ForeignKey(PointsAffaires, null=True, blank=True, on_delete=models.SET_NULL)
    qte = models.IntegerField()
    gerant = models.ForeignKey(Utilisateurs, on_delete=models.DO_NOTHING)
    date_ajout = models.DateTimeField(auto_now_add=True)

