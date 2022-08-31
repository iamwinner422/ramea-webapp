from django.conf.urls import url
from django.urls import path
from . import views
urlpatterns = [
    path('', views.index_vente, name='index_ventes'),
    path('new/', views.new_vente, name='new_vente'),
    path('se/<int:id>', views.getInfoProd, name="get_info_prod"),
    path('nouvelle_vte/', views.nouvelle_vente, name="nouvelle_vte"),
]
