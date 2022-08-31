from django.db import models
from gerants.models import Utilisateurs
from clients.models import Clients
from points_affaire.models import PointsAffaires
from services.models import Services
from organisations.models import Organisations
# Create your models here.

class Prestations(models.Model):
    date_prestation = models.DateTimeField(auto_now_add=True)
    total_prestation = models.FloatField()
    gerant = models.ForeignKey(Utilisateurs, on_delete=models.DO_NOTHING)
    client = models.ForeignKey(Clients, null=True, blank=True, on_delete=models.SET_NULL)
    #client = models.ForeignKey(Clients, on_delete=models.SET("Client supprimé"))
    service = models.ManyToManyField(Services, through='ServicePrestation')
    point_vente = models.ForeignKey(PointsAffaires, null=True, blank=True, on_delete=models.SET_NULL)
    org = models.ForeignKey(Organisations, on_delete=models.DO_NOTHING)

#RELATION PRESTATION SERVICES
class ServicePrestation(models.Model):
    montant_prestation = models.FloatField()
    service = models.ForeignKey(Services, null=True, blank=True, on_delete=models.SET_NULL)
    prestation = models.ForeignKey(Prestations, null=True, blank=True, on_delete=models.SET_NULL)
    #C'EST DES FLOPS DE MERDE TCHALEY HEIN
    