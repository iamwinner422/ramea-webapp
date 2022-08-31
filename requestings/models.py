from django.db import models


# Create your models here.
class Requestings(models.Model):
    nom = models.CharField(max_length=255)
    telephone_p = models.CharField(max_length=8)
    telephone_s = models.CharField(null=True, max_length=8, blank=True)
    mail = models.CharField(max_length=255)
    other = models.TextField(null=True, blank=True)
    date_add = models.DateTimeField(auto_now_add=True)
