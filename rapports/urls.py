from django.urls import path,include
from . import views

urlpatterns = [
    path('', views.index, name='index_rapports'),
    path('export/point/jour/', views.export_day_point_xls, name="daily_point")
]
