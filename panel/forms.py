from django import forms
from django.contrib.auth.models import User


#


class FormLoginPanel(forms.ModelForm):
    nom = forms.CharField(widget=forms.TextInput(attrs={
        'placeholder': 'Nom d\'utilisateur ou adresse e-mail',
        'class': 'form-control',
        'maxlength': '50',
    }), error_messages={'required': 'Saisissez le nom d\'utilisateur ou l\'adresse e-mail.'}, )

    password = forms.CharField(widget=forms.PasswordInput(attrs={
        'class': 'form-control',
        'placeholder': 'Mot de passe',
    }), error_messages={'required': 'Saisissez le mot de passe.'})

    # VERIFICATION DE L'EXISTANCE DE L'ADMIN
    # def isExiste(identification, lepassword, *args, **kwargs):
    #     if Administrateurs.objects.filter(nom=identification, password=lepassword):
    #         return True
    #     elif Administrateurs.objects.filter(adr_mail=identification, password=lepassword):
    #         return True
    #     else:
    #         return False
