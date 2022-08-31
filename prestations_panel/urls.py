from django.urls import path
from . import views
urlpatterns = [
    path('', views.index, name='index_prestation_pnl'),
    path('details/<int:point>/<int:id>/', views.details_prestation, name='details_prestation_pnl'),
    path('delete/<int:id>/', views.retirer_prestation_p, name='retirer_prestation_p'),
]
 