from django.db import models

# Create your models here.
class Organisations(models.Model):
    nom = models.CharField(max_length=255, unique=True, error_messages={'unique':'Une organisation avec ce nom existe déjà.'})
    telephone_p = models.CharField(unique=True, error_messages={'unique':'Une organisation avec ce téléphone déjà.'}, max_length=8)
    telephone_s = models.CharField(null=True, max_length=8, blank=True)
    mail = models.CharField(max_length=255, unique=True, error_messages={'unique':'Une organisation avec cette adresse mail déjà.'})
    date_add = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.nom
    


