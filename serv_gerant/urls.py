from django.urls import path
from . import views
urlpatterns = [
    path('', views.list_serv_gerant, name='index_serv_gerant'),
    path('export_pdf/', views.export_pdf, name="export_pdf_serv_gerant"),
    path('export_xls/', views.export_xls, name="export_xls_serv_gerant"),
    path('details/<int:id>/', views.details_service, name='details_service_user'),
]
