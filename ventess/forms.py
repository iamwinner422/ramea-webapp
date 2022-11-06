from points_affaire.models import PointsAffaires
from django.forms import fields
from django.shortcuts import get_object_or_404
from gerants.models import Utilisateurs
from clients.models import Clients
from django import forms
from ventess.models import ProduitVente, Ventes
from produits.models import Produits



class FormVente(forms.ModelForm):
    
    def __init__(self, *args, **kwargs):
        self.request = kwargs.pop('request')
        super(FormVente, self).__init__(*args, **kwargs)
        gerant = Utilisateurs.objects.get(user=self.request.user)
        point_vente_gerant = gerant.point_vente_id

        self.fields['client'].empty_label = "Sélectionnez un client"
        self.fields['client'].queryset = Clients.objects.filter(point_vente_id=point_vente_gerant).order_by('nom')
    
    client = forms.ModelChoiceField(queryset=None, label='', widget=forms.Select(attrs={
        'class':'form-select select',
    }))
    
class FormProdVente(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        self.request = kwargs.pop('request')
        super(FormProdVente, self).__init__(*args, **kwargs)
        gerant = Utilisateurs.objects.get(user=self.request.user)
        point_vente_gerant = gerant.point_vente_id
        org_id = gerant.organisation_id
        point = get_object_or_404(PointsAffaires, id=point_vente_gerant)
        self.fields['produit'].empty_label = "Sélectionnez un produit"
        self.fields['produit'].queryset = Produits.objects.filter(point_vente=point).order_by('designation')

        self.fields['client'].empty_label = "Sélectionnez un client"
        self.fields['client'].queryset = Clients.objects.filter(org_id=org_id).order_by('nom')

    produit = forms.ModelChoiceField(queryset=None, label='', widget=forms.Select(attrs={
        'class':'form-select select',
    }))

    client = forms.ModelChoiceField(queryset=None, label='', widget=forms.Select(attrs={
        'class':'form-select select',
        'id':'selectClient',
    }))


    class Meta:
        model = Ventes
        fields = ['client','produit']


class FormProduitVente(forms.ModelForm):
    qte_cmdee = forms.IntegerField(label='', widget=forms.NumberInput(attrs={
        'class':'form-control',
        'placeholder': 'Qté à commander',
        'id': 'qte_cmdee',
        'disabled': 'disabled',
    }), error_messages={'invalid':'La quantité saisie est incorrecte.', 'required':'Saissiez la quantité.'})

    class Meta:
        model = ProduitVente
        fields = ['qte_cmdee'] 

    def clean_qte_stock(self, *args, **kwargs):
        qte_cmdee = self.cleaned_data.get('qte_cmdee')
        if qte_cmdee <= 0:
            raise forms.ValidationError("Quantité invalide.")
        else:
            return qte_cmdee