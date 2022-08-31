from django.db.models import fields
from .models import Organisations
from django import forms


class FormOrganisation(forms.ModelForm):
    nom = forms.CharField(widget=forms.TextInput(attrs={
        'class':'form-control', 
        "placeholder": "Nom ou Raison sociale",
        'maxlength':'100',
    }), error_messages={"required":"Saisissez le nom ou la raison sociale."})

    telephone_p = forms.IntegerField(widget=forms.TextInput(attrs={
        'class':'form-control', 
        "placeholder": "Téléphone principal",
        'maxlength':'8',
    }), error_messages={"required":"Saisissez le téléphone", 'invalid':'Le téléphone saisi est incorrect.'})

    telephone_s = forms.IntegerField(widget=forms.TextInput(attrs={
        'class':'form-control', 
        "placeholder": "Téléphone secondaire",
        'maxlength':'8',
    }), required=False, error_messages={'invalid':'Le téléphone saisi est incorrect.'})

    mail = forms.EmailField(widget=forms.EmailInput(attrs={
        'class':'form-control', 
        "placeholder": "Adresse e-mail",
    }), error_messages={"required":"Saisissez l'adresse-email", 'invalid':'L\'adresse e-mail saisie est incorrect.'})

    class Meta:
        model = Organisations
        fields = '__all__'

    #C'EST DANS FORMS ON FAIT LES CONTROLS
    #clean_nom_du_champ

    #VERIFICATION DU NUMERO DE TELEPHONE
    def clean_telephone_p(self, *args, **kwargs):
        telephone_p = str(self.cleaned_data.get("telephone_p"))
        if len(telephone_p) != 8 or telephone_p.isnumeric == False :
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect 1!")
        elif len(telephone_p) == 8 and telephone_p.isnumeric == False:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect! 2")
        elif len(telephone_p) != 8 or telephone_p.isnumeric == True:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect! 3") 
        else:
            return telephone_p
    
    #VERIFICATION DU NUMERO DE TELEPHONE
    def clean_telephone_s(self, *args, **kwargs):
        telephone_s = str(self.cleaned_data.get("telephone_s"))
        if len(telephone_s) != 8 and telephone_s.isdigit == False :
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
        elif len(telephone_s) == 8 and telephone_s.isdigit == False:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
        elif len(telephone_s) != 8 and telephone_s.isdigit == True:
            raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!") 
        else:
            return telephone_s