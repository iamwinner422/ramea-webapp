from django.shortcuts import redirect, render
from requestings.forms import FormDemande
from django.contrib import messages
from django.http import HttpResponse
# Create your views here.
def index(request):
    return render(request, 'accueil/index.html')


def demande_org(request):
    if request.method == 'POST':
        form = FormDemande(request.POST)
        if form.is_valid():
            # nom_org = form.fields.get('nom_org')
            form.save()
            # id_org = form.instance.id  # RECUPERATION DE L'ID
            # nom_org = form.instance.nom #RECUPRATION DU NOM
            # return redirect('new_admin', id=id_org)
            form = FormDemande()
            messages.info(request, "Votre demande a été envoyé. Nous vous répondrons sous peu.")

    else:
        form = FormDemande()
    context = {
        'form': form,
    }
    return render(request, 'organisations/index.html', context)


def handle_not_found(request, exception):
    return render(request, 'others/404.html')


def handle_server_error(request):
    return render(request, 'others/500.html')
