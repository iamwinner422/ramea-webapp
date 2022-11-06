from django.urls import path
from . import views
urlpatterns = [
    path('', views.index, name='index_prestations'),
    path('new/', views.new_prestation, name='new_prestation'),
    path('nouvelle/', views.nouvelle_prestation, name='nouvelle_prestation'),
    path('details/<int:id>/', views.details_prestation, name='details_prestation'),
    path('print/<int:id>/', views.export_pdf, name='print_p_facture'),
]
 