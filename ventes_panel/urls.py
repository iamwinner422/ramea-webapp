from django.urls import path
from . import views
urlpatterns = [
    path('', views.index_vente, name='index_vente_pnl'),
    path('details/<int:point>/<int:id>/', views.details_vente, name="details_vente"),
    path('delete/<int:id>/', views.retirer_vente_v, name='retirer_vente_v'),
    path('print/<int:id>/', views.export_pdf, name="print_vente_pnl"),

]
 