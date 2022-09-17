from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='panel_index'),
    path('login/', views.login_panel, name='login_panel'),
    path('demande/<int:id>', views.details, name='details_demande'),
    path('valider/<int:id>', views.valider, name='valider_demande'),
    path('delete-demande/<int:id>', views.delete, name='delete_demande'),
    path('logout', views.logout_panel, name='logout_panel'),
]