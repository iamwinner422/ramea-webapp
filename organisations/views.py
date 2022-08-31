from organisations.models import Organisations
from django.contrib.auth.decorators import login_required
from django.forms import fields
from django.http.response import HttpResponse
from django.shortcuts import get_object_or_404, redirect, render
from .forms import FormOrganisation
from administrateurs.models import Administrateurs

# Create your views here.

#ACCEUIL ORGANISATIONS
def index_org(request):
    if request.method == 'POST':
        form = FormOrganisation(request.POST)
        if form.is_valid():
            #nom_org = form.fields.get('nom_org')
            form.save()
            id_org = form.instance.id #RECUPERATION DE L'ID
            #nom_org = form.instance.nom #RECUPRATION DU NOM
            return redirect('new_admin', id=id_org)
    else:
        form = FormOrganisation()
    context = {
        'form': form,
    }
    return render(request, 'organisations/index.html', context)



#UPDATE
@login_required(login_url='login_admin')
def update_org(request):
    
    admin = get_object_or_404(Administrateurs, user=request.user)
    admin_org_id = admin.organisation_id

    org = get_object_or_404(Organisations, id=admin_org_id)

    if request.method == 'POST':
        form = FormOrganisation(request.POST, instance=org)
        if form.is_valid():
            form.save()
            return redirect('dashboard_index')
    else:
        form = FormOrganisation(instance=org)
    
    context = {
        'form': form,
        'org': org,
    }

    return render(request, 'organisations/update.html', context)