from django.contrib import admin
from ventess.models import Ventes, ProduitVente, HistoProdVte
# Register your models here.
admin.site.register(Ventes)
admin.site.register(ProduitVente)
admin.site.register(HistoProdVte)
