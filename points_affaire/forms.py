from django.db.models import fields
from points_affaire.models import PointsAffaires
from django import forms

class FormNewPoint(forms.ModelForm):
    nom = forms.CharField(label='', widget=forms.TextInput(attrs={
        'class':'form-control',
        'placeholder':'Nom du point de vente',
        'maxlength':'100',
    }), error_messages={'required':'Saissiez le nom du point.'})

    telephone_point = forms.IntegerField(label='', widget=forms.TextInput(attrs={
        'class':'form-control',
        'placeholder':'Numéro de téléphone',
        'maxlength':'8'
    }), required=False, error_messages={'invalid':'Le numéro de téléphone saisi est incorrect!'})

    adresse = forms.CharField(label='', widget=forms.TextInput(attrs={
        'class':'form-control',
        'placeholder':'Adresse du point de vente',
    }), error_messages={'required':'Saissiez l\'adresse du point.'})
    class Meta:
        model = PointsAffaires
        fields = ['nom', 'telephone_point', 'adresse']

    #VERIFICATION DU NUMERO DE TELEPHONE
    def clean_telephone_point(self, *args, **kwargs):
        if self.cleaned_data.get("telephone_point"):
            telephone_point = str(self.cleaned_data.get("telephone_point"))
            if len(telephone_point) != 8 or telephone_point.isnumeric == False :
                raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
            elif len(telephone_point) == 8 and telephone_point.isnumeric == False:
                raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!")
            elif len(telephone_point) != 8 or telephone_point.isnumeric == True:
                raise forms.ValidationError("Le numéro de téléphone saisi est incorrect!") 
            else:
                return telephone_point
        