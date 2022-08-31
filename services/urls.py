from services.views import index
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index_services'),
    path('delete/<int:id>/', views.delete_service, name='delete_service'),
    path('update/<int:id>/', views.update_service, name='update_service'),
    path('export_pdf/', views.export_pdf, name="export_pdf_service"),
    path('export_xls/', views.export_xls, name="export_xls_service"),
     path('details/<int:id>/', views.details_service, name='details_service'),
]
