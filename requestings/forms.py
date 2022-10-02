from django.db.models import fields
from .models import Requestings
from django import forms
import os
from django.core.exceptions import ValidationError

class FormDemande(forms.ModelForm):
    nom = forms.CharField(widget=forms.TextInput(attrs={
        'class': 'form-control',
        "placeholder": "Nom ou Raison sociale",
        'maxlength': '100',
    }), error_messages={"required": "Saisissez le nom ou la raison sociale."})

    telephone_p = forms.CharField(widget=forms.TextInput(attrs={
        'class': 'form-control',
        "placeholder": "Téléphone principal",
        'maxlength': '8',
    }), error_messages={"required": "Saisissez le téléphone", 'invalid': 'Le téléphone saisi est incorrect.'})

    telephone_s = forms.CharField(widget=forms.TextInput(attrs={
        'class': 'form-control',
        "placeholder": "Téléphone secondaire",
        'maxlength': '8',
    }), required=False, error_messages={'invalid': 'Le téléphone saisi est incorrect.'})

    mail = forms.EmailField(widget=forms.EmailInput(attrs={
        'class': 'form-control',
        "placeholder": "Adresse e-mail",
    }), error_messages={"required": "Saisissez l'adresse-email", 'invalid': 'L\'adresse e-mail saisie est incorrect.'})

    other = forms.CharField(widget=forms.Textarea(attrs={
        'class': 'form-control',
        "placeholder": "Parlez-nous de vous...",
        'rows': '5',
    }), required=False)

    file = forms.FileInput()
    class Meta:
        model = Requestings
        fields = '__all__'

    # C'EST DANS FORMS ON FAIT LES CONTROLS
    # clean_nom_du_champ

    # VERIFICATION DU NUMERO DE TELEPHONE
    def clean_telephone_p(self, *args, **kwargs):
        telephone_p = str(self.cleaned_data.get("telephone_p"))
        if len(telephone_p) != 8 or telephone_p.isdigit == False:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
        elif len(telephone_p) == 8 and telephone_p.isdigit == False:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
        elif len(telephone_p) != 8 or telephone_p.isdigit == True:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
        else:
            return telephone_p

    # VERIFICATION DU NUMERO DE TELEPHONE
    def clean_telephone_s(self, *args, **kwargs):
        telephone_s = str(self.cleaned_data.get("telephone_s"))
        if len(telephone_s) != 8 and telephone_s.isdigit == False:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
        elif len(telephone_s) == 8 and telephone_s.isdigit == False:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
        elif len(telephone_s) != 8 and telephone_s.isdigit == True:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
        else:
            return telephone_s

    #validation du fichier choisi
    def clean_file(self, *args, **kwargs):
        file = str(self.cleaned_data.get("file"))
        ext = os.path.splitext(file)[1]  # [0] returns path+filename
        valid_extensions = ['.pdf', '.jpeg', '.jpg', '.png']
        if not ext.lower() in valid_extensions:
            raise forms.ValidationError('Le fichier choisi n\'est pas supporté.')
        else:
            return file