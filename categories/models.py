from django.db import models
from django.db.models.deletion import CASCADE
from organisations.models import Organisations
from administrateurs.models import Administrateurs
# Create your models here.
class TypeCategorie(models.Model):
    nom = models.CharField(max_length=35)
    
    def __str__(self):
        return self.nom

class Categories(models.Model):
    nom = models.CharField(max_length=55, unique='True', error_messages={'unique':'La catégorie existe déjà.'})
    typecategorie = models.ForeignKey(TypeCategorie, on_delete=models.DO_NOTHING)
    org = models.ForeignKey(Organisations, on_delete=CASCADE)
    admin = models.ForeignKey(Administrateurs, on_delete=models.DO_NOTHING)

    def __str__(self):
        return self.nom