from django.shortcuts import redirect, render
from requestings.forms import FormDemande
from django.contrib import messages
from requestings.models import Requestings
from django.http import HttpResponse
# Create your views here.
def index(request):
    return render(request, 'accueil/index.html')


def demande_org(request):
    if request.method == 'POST':
        form = FormDemande(request.POST, request.FILES)
        if form.is_valid():
            # nom_org = form.fields.get('nom_org')
            #sfm = form.save()
            # id_org = form.instance.id  # RECUPERATION DE L'ID
            # nom_org = form.instance.nom #RECUPRATION DU NOM
            # return redirect('new_admin', id=id_org)
            dmd = Requestings(nom=request.POST.get('nom'), telephone_p=request.POST.get('telephone_p'), telephone_s=request.POST.get('telephone_s'), mail=request.POST.get('mail'), other=request.POST.get('other'), file=request.FILES.get('file'))
            dmd.save()
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
