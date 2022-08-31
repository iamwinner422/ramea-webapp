from organisations.models import Organisations
from django.db import models
from administrateurs.models import Administrateurs

    # Create your models here.
class PointsAffaires(models.Model):
    nom = models.CharField(max_length=100, unique=True, error_messages={'unique':'Le nom saisi existe déjà.'})
    adresse = models.CharField(max_length=255)
    telephone_point = models.CharField(max_length=8, null=True)
    date_creation = models.DateTimeField(auto_now_add=True)
    admin = models.ForeignKey(Administrateurs, on_delete=models.DO_NOTHING)
    org = models.ForeignKey(Organisations, on_delete=models.CASCADE)

    def __str__(self):
        return self.nom