"""ramea URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from django.conf import settings
from django.views.static import serve
from django.conf.urls import url


handler404 = "accueil.views.handle_not_found"
handler500 = "accueil.views.handle_server_error"

urlpatterns = [
    url(r'^media/(?P<path>.*)$', serve,{'document_root': settings.MEDIA_ROOT}),
    url(r'^static/(?P<path>.*)$', serve,{'document_root': settings.STATIC_ROOT}),

    path('admin/', admin.site.urls),
    path('', include('accueil.urls')),
    path('organisations/', include('organisations.urls')),
    path('administrateurs/', include('administrateurs.urls')),
    path('panel/', include('dashboard.urls')),
    path('panel/produits/', include('produits.urls')),
    path('panel/services/', include('services.urls')),
    path('panel/points/', include('points_affaire.urls')),
    path('panel/categories/', include('categories.urls')),
    path('gerants/', include('gerants.urls')),
    path('dashboard/', include('dash_user.urls')),
    path('dashboard/clients/', include('clients.urls')),
    path('dashboard/produits/', include('prod_gerant.urls')),
    path('dashboard/services/', include('serv_gerant.urls')),
    path('dashboard/ventes/', include('ventess.urls')),
    path('dashboard/prestations/', include('prestation.urls')),
    path('panel/rapports/', include('rapports.urls')),
    path('panel/clients/', include('client_panel.urls')),
    path('panel/ventes/', include('ventes_panel.urls')),
    path('panel/prestations/', include('prestations_panel.urls')),
    path('admin/panel/', include('panel.urls')),
]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


