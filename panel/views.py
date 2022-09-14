from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.http.response import HttpResponse, JsonResponse
from django.contrib.auth import login, authenticate, logout
from organisations.models import Organisations
# Create your views here.
from requestings.models import Requestings


def login_panel(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)
        if user is not None:
            if user.is_staff:
                login(request, user)
                return redirect('panel_index')
            else:
                messages.info(request, "Erreur! Vous n'êtes pas autorisé.")
        else:
            messages.info(request, "Nom d'utilisateur ou mot de passe incorrect!")

    return render(request, 'panel/login.html')


def logout_panel(request):
    logout(request)
    return redirect('logout_panel')


@login_required(login_url='login_panel')
def index(request):
    # RECUPERATION DES INFOS APERCU
    nb_dmd = Requestings.objects.all().count()
    lst_dmd = Requestings.objects.all().order_by('-id')
    context = {
        'nb_dmd': nb_dmd,
        'lst_dmd': lst_dmd,
    }
    return render(request, 'panel/index.html', context)


@login_required(login_url='login_panel')
def details(request, id):
    # RECUPERATION DE LA DEMANDE
    demande = get_object_or_404(Requestings, id=id)

    context = {
        'demande': demande,
    }
    return render(request, 'panel/details.html', context)


@login_required(login_url='login_panel')
def valider(request, id):
    success = 401
    if request.method == "POST":
        if request.is_ajax():

            # RECUPERATION DE LA DEMANDE
            demande = get_object_or_404(Requestings, id=id)

            if Organisations.objects.filter(mail=demande.mail).exists():
                success = 201
            else:

                # CREATION DE L'ORGANISATION
                org = Organisations.objects.create(nom=demande.nom, telephone_p=demande.telephone_p, mail=demande.mail,
                                                   telephone_s=demande.telephone_s)
                org.save()
                success = 200
            return HttpResponse(success)
