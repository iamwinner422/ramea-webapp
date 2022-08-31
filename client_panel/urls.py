from os import name
from django.urls import path
from .import views
urlpatterns = [
    path('', views.index, name='index_clients_panel'),
    path('delete/<int:id>/', views.delete_client, name='delete_client'),
    path('update/<int:id>/', views.update_client, name='update_client_panel'),
    path('export_pdf/', views.export_pdf, name='export_pdf_panel'),
    path('export_xls/', views.export_xls, name='export_xls_panel'),
    path('details/<int:id>/', views.details_client, name='details_client'),
]
