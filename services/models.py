from administrateurs.models import Administrateurs
from django.db import models
from points_affaire.models import PointsAffaires
from organisations.models import Organisations
from categories.models import Categories


# Create your models here.
class Services(models.Model):
    nom = models.CharField(max_length=35, unique=True, error_messages={'unique':'Le service existe déjà.'})
    categorie = models.ForeignKey(Categories, null=True, blank=True, on_delete=models.SET_NULL)
    point_vente = models.ManyToManyField(PointsAffaires)
    date_add = models.DateTimeField(auto_now_add=True)
    admin = models.ForeignKey(Administrateurs, on_delete=models.DO_NOTHING)
    org = models.ForeignKey(Organisations, on_delete=models.CASCADE)

    def __str__(self):
        return self.nom