from django.urls import path
from gerants.views import details_gerant, index, login_gerant
from .import views

urlpatterns = [
    path('', views.index, name="index_gerants"),
    path('login/', views.login_gerant, name="login_gerant"),
    path('logout/', views.logout_gerant, name="logout_gerant"),
    path('update/', views.update_gerant, name="update_gerant"),
    path('update/password/', views.update_pass_gerant, name="update_pass_gerant"),
    path('export_pdf/', views.export_pdf, name="export_pdf_gerant"),
    path('export_xls/', views.export_xls, name="export_xls_gerant"),
    path('update/point/<int:id>/', views.update_point_gerant, name="update_point_gerant"),
    path('details/<int:id>/', views.details_gerant, name='details_gerant'),
]
