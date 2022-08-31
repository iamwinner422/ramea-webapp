from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='panel_index'),
    path('login/', views.login_panel, name='login_panel'),
    path('logout', views.logout_panel, name='logout_panel'),
]