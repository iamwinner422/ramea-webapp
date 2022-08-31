from django.urls import path
from . import views
urlpatterns = [
    path('', views.index_produits, name='index_produits'),
    path('delete/<int:id>/', views.delete_prod, name='delete_prod'),
    path('update/<int:id>/', views.update_prod, name='update_prod'),
    path('export_pdf/', views.export_pdf, name="export_pdf_prod"),
    path('export_xls/', views.export_xls, name="export_xls_prod"),
    path('export_pdf_histo/', views.export_pdf_histo, name="histo_pdf_prod"),
    path('export_xls_histo/', views.export_xls_histo, name="histo_xls_prod"),
    path('details/<int:id>/', views.details_produit, name="details_prod"),
    path('update_qte/<int:id>/', views.update_qte, name="update_qte"),
    path('entree_stock/<int:id>/', views.update_stock, name="update_stock_prod") 
]
