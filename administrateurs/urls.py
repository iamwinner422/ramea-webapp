from django.conf.urls import url
from django.urls import path
from . import views

urlpatterns = [
    path('new/<int:id>/', views.new_admin, name='new_admin'),
    path('login/', views.login_admin, name='login_admin'),
    path('logout', views.logout_admin, name='logout_admin'),
    path('update/', views.update_admin, name='update_admin'),
    path('update/password/', views.update_pass, name='update_admin_pass'),
    path('', views.list_admin, name='list_admin'),
    path('export_pdf/', views.export_pdf, name="export_pdf_admin"),
    path('export_xls/', views.export_xls, name="export_xls_admin"),
    path('details/<int:id>/', views.details_admin, name="details_admin"),
]