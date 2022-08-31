from django.db import models
from django.db.models.base import Model
from django.db.models.deletion import CASCADE
from organisations.models import Organisations
from django.contrib.auth.models import User
from points_affaire.models import PointsAffaires
from administrateurs.models import Administrateurs
# Create your models here.


class Utilisateurs(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    telephone = models.CharField(unique=True, error_messages={'unique':'Le téléphone saisi est déjà utilisé.'}, max_length=8)
    organisation = models.ForeignKey(Organisations, on_delete=models.CASCADE)
    point_vente = models.ForeignKey(PointsAffaires, null=True, blank=True, on_delete=models.SET_NULL)
    admin = models.ForeignKey(Administrateurs, on_delete=models.DO_NOTHING)

    def __str__(self):
        return self.user.username