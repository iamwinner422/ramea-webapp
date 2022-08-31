from django.urls import path
from .import views
urlpatterns = [
    path('', views.index, name="user_dashboard_index"),
    path('details/', views.details_point, name="details_point_user"),
    path('details/gerants/', views.details_gerant, name="details_gerant_user"),
]
