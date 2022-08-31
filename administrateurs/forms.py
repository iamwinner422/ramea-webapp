from django import forms
from django.db import models
from django.db.models.constraints import UniqueConstraint
from django.forms import ModelForm, fields, widgets
from .models import Administrateurs
from django.contrib.auth.forms import PasswordChangeForm, UserChangeForm, UserCreationForm
from django.contrib.auth.models import User





#UTILISATEUR PAR DEFAUT ADMIN
class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'first_name', 'last_name', 'email', 'password1', 'password2']



#MODIFICATION DES INFOS DU USER
class UserUpdateForm(UserChangeForm):
    class Meta:
        model = User
        fields = ['username', 'first_name', 'last_name', 'email'] 
    

#MODIFICATION DU MOT DE PASSE
class UserPasswordForm(PasswordChangeForm):
    class Meta:
        model = User
        fields = ['old_password', 'new_password1', 'new_password2']



#CREATION DU PROFILE ADMIN
class AdminProfileForm(forms.ModelForm):
    class Meta:
        model = Administrateurs
        fields = ['telephone']
    #VERIFICATION DU NUMERO DE TELEPHONE
    def clean_telephone(self, *args, **kwargs):
        telephone = str(self.cleaned_data.get("telephone"))
        if len(telephone) != 8 and telephone.isdigit == False :
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
        elif len(telephone) == 8 and telephone.isdigit == False:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
        elif len(telephone) != 8 and telephone.isdigit == True:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!") 
        else:
            return telephone


#LOGIN
class FormLoginAdmin(forms.ModelForm):
    nom = forms.CharField(widget=forms.TextInput(attrs={
       'placeholder':'Nom d\'utilisateur ou adresse e-mail',
        'class':'form-control',
        'maxlength':'50',
    }), error_messages={'required':'Saisissez le nom d\'utilisateur ou l\'adresse e-mail.'}, )

    password = forms.CharField(widget=forms.PasswordInput(attrs={
        'class':'form-control',
        'placeholder':'Mot de passe',
    }), error_messages={'required':'Saisissez le mot de passe.'})

    

    #VERIFICATION DE L'EXISTANCE DE L'ADMIN
    def isExiste(identification, lepassword, *args, **kwargs):
        if Administrateurs.objects.filter(nom=identification, password=lepassword):
            return True
        elif Administrateurs.objects.filter(adr_mail=identification, password=lepassword):
            return True
        else:
            return False


