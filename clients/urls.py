from django.urls import path
from .import views
urlpatterns = [
    path('', views.index, name='index_clients'),
    path('update/<int:id>/', views.update_client, name='update_client'),
    path('export_pdf/', views.export_pdf, name="export_pdf_client"),
    path('export_xls/', views.export_xls, name="export_xls_client"),
    path('details/<int:id>/', views.details_client, name="detail_client_user"),
]
