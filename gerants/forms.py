from django.db.models import fields
from django.shortcuts import get_object_or_404
from organisations.models import Organisations
from gerants.models import Utilisateurs
from django import forms
from django.contrib.auth.forms import PasswordChangeForm, UserChangeForm, UserCreationForm
from django.contrib.auth.models import User
from django.forms.models import model_to_dict
from points_affaire.models import PointsAffaires
from administrateurs.models import Administrateurs



#UTILISATEUR PAR DEFAUT DE DJANGO
class CreateUserForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'first_name', 'last_name', 'password1', 'password2']

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



#CREATION DU PROFIL USER AVEC POINT DE VENTE
class UserProfilForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        self.request = kwargs.pop('request')
        super(UserProfilForm, self).__init__(*args, **kwargs)
        self.fields['point_vente'].empty_label = "Choisssez un point de vente"
        #admin = Administrateurs.objects.get(user=self.request.user)
        admin = get_object_or_404(Administrateurs, user=self.request.user)
        admin_org = admin.organisation_id
        self.fields['point_vente'].queryset= PointsAffaires.objects.filter(org_id=admin_org)
    
    telephone = forms.IntegerField(label='', widget=forms.TextInput(attrs={
       'maxlength':'8',
    }), error_messages={'invalid':'Le numéro de téléphone saisi est incorrect.'})
    
    point_vente = forms.ModelChoiceField(queryset=None, widget=forms.Select(attrs={
        'class':'form-select select',
    }))

    class Meta:
        model = Utilisateurs
        fields = ['telephone', 'point_vente']

    def clean_telephone(self, *args, **kwargs):
        telephone = str(self.cleaned_data.get('telephone'))
        if len(telephone) != 8:
            raise forms.ValidationError('Le numéro de téléphone saisi est incorrect.')
        else:
            return telephone

#CREATION DU PROFIL USER SANS POINT DE VENTE
class UserProfilFormNew(forms.ModelForm):
    telephone = forms.CharField(label='', widget=forms.TextInput(attrs={
       'maxlength':'8'
    }), error_messages={'invalid':'Le numéro de téléphone saisi est incorrect.'})

    class Meta:
        model = Utilisateurs
        fields = ['telephone']

    def clean_telephone(self, *args, **kwargs):
        telephone = str(self.cleaned_data.get('telephone'))
        print(telephone)
        if len(telephone) != 8:
            raise forms.ValidationError('Le numéro de téléphone saisi est incorrect.')
        else:
            return telephone


#CREATION DU PROFIL USER AVEC UNIQUEMENT LE POINT DE VENTE
class UserProfilFormNew2(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        self.request = kwargs.pop('request')
        super(UserProfilFormNew2, self).__init__(*args, **kwargs)
        self.fields['point_vente'].empty_label = "Choisssez un point de vente"
        #admin = Administrateurs.objects.get(user=self.request.user)
        admin = get_object_or_404(Administrateurs, user=self.request.user)
        admin_org = admin.organisation_id
        self.fields['point_vente'].queryset= PointsAffaires.objects.filter(org_id=admin_org)

    point_vente = forms.ModelChoiceField(queryset=None, widget=forms.Select(attrs={
        'class':'form-select select',
    }))
     
    class Meta:
        model = Utilisateurs
        fields = ['point_vente']



#LOGIN
class FormLoginUser(forms.ModelForm):
    nom = forms.CharField(widget=forms.TextInput(attrs={
       'placeholder':'Nom d\'utilisateur ou adresse e-mail',
        'class':'form-control',
        'maxlength':'50',
    }), error_messages={'required':'Saisissez le nom d\'utilisateur ou l\'adresse e-mail.'}, )

    password = forms.CharField(widget=forms.PasswordInput(attrs={
        'class':'form-control',
        'placeholder':'Mot de passe',
    }), error_messages={'required':'Saisissez le mot de passe.'})
