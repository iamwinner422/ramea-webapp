from django.urls import path
from . import views
urlpatterns = [
    path('', views.index_vente, name='index_ventes'),
    path('new/', views.new_vente, name='new_vente'),
    path('se/<int:id>', views.getInfoProd, name="get_info_prod"),
    path('nouvelle_vte/', views.nouvelle_vente, name="nouvelle_vte"),
    path('sus/<int:id>', views.susProdQte, name="sus_prod_qte"),
    path('add/<int:id>', views.addProdQte, name="add_prod_qte"),
    path('details/<int:id>/', views.details_vente, name="details_vente_gerant"),
    path('print/<int:id>/', views.export_pdf, name='print_facture'),

]
 