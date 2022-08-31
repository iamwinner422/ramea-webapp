from django import forms
from gerants.models import Utilisateurs
from django.shortcuts import get_object_or_404
from points_affaire.models import PointsAffaires
from services.models import Services
from clients.models import Clients
from prestation.models import Prestations, ServicePrestation



class FormPrestation(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        self.request = kwargs.pop('request')
        super(FormPrestation, self).__init__(*args, **kwargs)
        gerant = Utilisateurs.objects.get(user=self.request.user)
        point_vente_gerant = gerant.point_vente_id
        point = get_object_or_404(PointsAffaires, id=point_vente_gerant)
        self.fields['service'].empty_label = "Sélectionnez un service"
        self.fields['service'].queryset = Services.objects.filter(point_vente=point).order_by('nom')

        self.fields['client'].empty_label = "Sélectionnez un client"
        self.fields['client'].queryset = Clients.objects.filter(point_vente=point).order_by('nom')

    service = forms.ModelChoiceField(queryset=None, label='', widget=forms.Select(attrs={
        'class':'form-select select',
    }))

    client = forms.ModelChoiceField(queryset=None, label='', widget=forms.Select(attrs={
        'class':'form-select select',
        'id':'selectClient',
    }))

    class Meta:
        model = Prestations
        fields = ['client','service']
    


class FormServicePrestation(forms.ModelForm):
    montant_prestation = forms.FloatField(label='', widget=forms.TextInput(attrs={
        'class':'form-control',
        'placeholder': 'Entrez le montant',
        'id':'montant_prestation',
    }), error_messages={'invalid':'Le montant est incorrecte.', 'required':'Saissiez le montant.'})
    
    class Meta:
        model = ServicePrestation
        fields = ['montant_prestation']

    def clean_montant_prestation(self, *args, **kwargs):
        montant_prestation = self.cleaned_data.get('montant_prestation')
        if montant_prestation.isnumeric():
            if montant_prestation <= 0:
                raise forms.ValidationError("Montant invalide.")
            else:
                return montant_prestation
        else:
            raise forms.ValidationError("Montant invalide.")
