from django.contrib import admin
from produits.models import Produits, HistoProd, QuantitePoint
# Register your models here.
admin.site.register(Produits)
admin.site.register(HistoProd)
admin.site.register(QuantitePoint)