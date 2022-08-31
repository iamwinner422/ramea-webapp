from collections import namedtuple
from django.urls import path
from . import views
urlpatterns = [
    path('', views.index, name='index_points'),
    path('delete/<int:id>/', views.delete_point, name='delete_point'),
    path('update/<int:id>/', views.update_point, name='update_point'),
    path('export_pdf/', views.export_pdf, name="export_pdf_point"),
    path('export_xls/', views.export_xls, name="export_xls_point"),
    path('details/<int:id>/', views.details_point, name='details_point'),
    path('details/remove/produit/<int:id>/<int:prod>/', views.retirer_produit, name='retirer_produit'),
    path('details/remove/service/<int:id>/<int:serv>/', views.retirer_service, name='retirer_service'),
    path('details/remove/client/<int:point>/<int:id>/', views.retirer_client, name="retirer_client"),
    path('details/remove/vente/<int:point>/<int:id>/', views.retirer_vente, name='retirer_vente'),
    path('details/remove/prestation/<int:point>/<int:id>/', views.retirer_prestation, name='retirer_prestation'),
]
 