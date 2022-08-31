from django.db import models
from points_affaire.models import PointsAffaires
from gerants.models import Utilisateurs
from organisations.models import Organisations
# Create your models here.


class Clients(models.Model):
    nom = models.CharField(max_length=35)
    prenoms = models.CharField(max_length=55)
    telephone_p = models.CharField(max_length=8, unique=True, error_messages={'unique':'Le téléphone saisi existe déjà!'})
    telephone_s = models.CharField(max_length=8, null=True, blank=True, unique=False, error_messages={'unique':'Le téléphone saisi existe déjà!'})
    adr_mail = models.EmailField(max_length=255)
    adr_phisique = models.CharField(max_length=155)
    image = models.ImageField(upload_to='clients_img/', null=True, blank=True)
    point_vente = models.ForeignKey(PointsAffaires, null=True, blank=True, on_delete=models.SET_NULL)
    gerant = models.ForeignKey(Utilisateurs, null=True, blank=True, on_delete=models.SET_NULL)
    org = models.ForeignKey(Organisations, on_delete=models.DO_NOTHING)
    def __str__(self):
        return self.nom + ' ' + self.prenoms