from categories.views import index, delete_cat
from django.urls import path
from . import views
urlpatterns = [
    path('', views.index, name='index_categories'),
    path('delete/<int:id>/', views.delete_cat, name='delete_cat'),
    path('update/<int:id>/', views.update_cat, name='update_cat'),
    path('export_pdf/', views.export_pdf, name="export_pdf_cat"),
    path('export_xls/', views.export_xls, name="export_xls_cat"),

]
