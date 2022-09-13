from . import views
from django.urls import path

urlpatterns = [
    # path('', views.index_org, name='index_org'),
    path('demande/', views.index_org, name='index_org'),
    path('update/', views.update_org, name='update_org'),
    # path('new/', name='new_orgs'),
]
