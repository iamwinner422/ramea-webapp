from django.db.models.deletion import CASCADE
from organisations.models import Organisations
from django.contrib.auth.models import User
from django.db import models

# Create your models here.
class Administrateurs(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    telephone = models.CharField(unique=True, error_messages={'unique':'Le téléphone saisi est déjà utilisé.'}, max_length=8)
    organisation = models.ForeignKey(Organisations, on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username
    
    