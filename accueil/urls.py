from . import views
from django.urls import path

urlpatterns = [
    path('', views.index, name='index'),
    path('demande/', views.demande_org, name='demande_org'),
]