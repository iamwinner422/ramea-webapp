from django.urls import path
from . import views
urlpatterns = [
    path('', views.list_prod_gerant, name="index_prod_gerant"),
    path('export_pdf/', views.export_pdf, name="export_pdf_prod_gerant"),
    path('export_xls/', views.export_xls, name="export_xls_prod_gerant"),
    path('update_stock/<int:id>/', views.update_stock, name="update_stock"),
    path('export_xls_historique/', views.export_xls_histo, name="export_xls_histo"),
    path('export_pdf_historique/', views.export_pdf_histo, name="export_pdf_histo"),
    path('details/<int:id>/', views.details_produit, name="details_produit_gerant")

]
