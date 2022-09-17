from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.http.response import HttpResponse, JsonResponse
from django.contrib.auth import login, authenticate, logout
from organisations.models import Organisations
from django.conf import settings
# Create your views here.
from requestings.models import Requestings

from django.core.mail import send_mail


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
    nb_dmd = Requestings.objects.filter(valide=True).count()
    lst_dmd = Requestings.objects.filter(valide=True).order_by('-id')
    lst_dmd_v = Requestings.objects.filter(valide=True).order_by('-id')
    nb_dmd_v = Requestings.objects.filter(valide=True).count()
    context = {
        'nb_dmd': nb_dmd,
        'lst_dmd': lst_dmd,
        'lst_dmd_v': lst_dmd_v,
        'nb_dmd_v': nb_dmd_v,
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
                subject, from_email, to = 'Inscription sur Ramea', 'hello@ramea.com', demande.mail
                #settings.EMAIL_HOST_USER
                xoxo ="Ici maguie"
                content = """<html>
                                <head>
                                    <meta charset="UTF-8">
                                    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
                                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
                                  
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
                                </head>
                                <body>
                                    <div class="table-responsive">
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                        <tr>
                                            <td style="padding: 10px 0 30px 0;">
                                                <table align="center" border="0" cellpadding="0" cellspacing="0" width="600" style="border: 1px solid #cccccc; border-collapse: collapse;">
                                                    <tr>
                                                        <td bgcolor="#ffffff" style="padding: 40px 30px 40px 30px;">
                                                            <div class="table-responsive">
                                                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                <tr>
                                                                    <td style="padding: 20px 0 30px 0; color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 20px;">
                                                                        <h2 style="color:#012970;">Bonjour, """ + demande.nom + """!</h2>
                                                                        <p>Nous vous informons que votre demande d'inscription sur notre plateforme a été approuvée. Veuillez cliquez sur le clien dessous pour compléter votre inscription.</p>
                                                                        <br>
                                                                        <center><a style="text-align:center; color:white; background-color:#4154f1;" href='http://"""+ request.META['HTTP_HOST']+"""/administrateurs/add/"""+str(org.id)+"""/"""+str(demande.id)+"""' target="_blank" class="btn">Terminer l'inscription</a></center>
                                                                    </td>
                                                                </tr>
                                                                <style>
                                                                    a{
                                                                        text-decoration:none;
                                                                        padding: .7rem 1rem;
                                                                        border: 1px solid #4154f1;
                                                                        border-radius: 7px;
                                                                    }
                                                                </style>
                                                            </table>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                    </div>
                                </body>    
                            </html>"""
                if send_mail(subject, content, from_email, [to], html_message=content):
                    success = 200
            return HttpResponse(success)
