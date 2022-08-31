from django.db import models
from django.forms import fields
from django.http import request
from django.shortcuts import get_object_or_404
from points_affaire.models import PointsAffaires
from django import forms
from django.db.models.query import QuerySet
from django.forms.models import model_to_dict
from django.forms.widgets import TextInput
from produits.models import HistoProd, Produits, QuantitePoint
from categories.models import Categories
from administrateurs.models import Administrateurs



class FormProduit(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        self.request = kwargs.pop('request')
        super(FormProduit, self).__init__(*args, **kwargs)
        self.fields['categorie'].empty_label = "Choisissez une catégorie"
        admin = Administrateurs.objects.get(user=self.request.user)
        admin_org = admin.organisation_id
        self.fields['categorie'].queryset=Categories.objects.filter(typecategorie_id=1, org_id=admin_org)
        self.fields['point_vente'].empty_label= "Choisssez un ou plusieurs point de vente"
        self.fields['point_vente'].queryset=PointsAffaires.objects.filter(org_id=admin_org)

    designation = forms.CharField(label='', widget=forms.TextInput(attrs={
        'class':'form-control',
        'placeholder':'Désignation',
        'maxlength':'50',
    }), error_messages={'required':'Saisissez la désignation.'})

    """quantite = forms.IntegerField(label='', widget=forms.TextInput(attrs={
        'class':'form-control',
        'placeholder':'Quantité',
    }), error_messages={'invalid':'La quantité saisie est incorrecte.', 'required':'Saissiez la quantité.'})
    """
    prix_unitaire = forms.FloatField(label='', widget=forms.TextInput(attrs={
        'class':'form-control',
        'placeholder':'Prix unitaire',
    }), error_messages={'invalid':'Le prix saisie est incorrecte.', 'required':'Saissiez le prix.'})

    categorie = forms.ModelChoiceField(queryset=None, widget=forms.Select(attrs={
        'class':'form-select select',
    }))

    image = forms.ImageField(label='', widget=forms.FileInput(attrs={
        'class':'form-control'
    }), required=False)
    
    point_vente = forms.ModelMultipleChoiceField(queryset=None, widget=forms.SelectMultiple(attrs={
        'class':'form-select select-m',
        'multiple':'multiple',
    }))

    class Meta:
        model = Produits
        fields = ['designation', 'prix_unitaire', 'categorie', 'image', 'point_vente']
    
    """def clean_quantite(self, *args, **kwargs):
        quantite = self.cleaned_data.get('quantite')
        if quantite <= 0:
            raise forms.ValidationError("Quantité invalide.")
        else:
            return quantite"""

    def clean_prix_unitaire(self, *args, **kwargs):
        prix_unitaire = self.cleaned_data.get('prix_unitaire')
        if prix_unitaire <=0:
            raise forms.ValidationError("Prix invalide.")
        else:
            return prix_unitaire



class FormQuantitePoint(forms.ModelForm):
    qte_stock = forms.IntegerField(label='', widget=forms.TextInput(attrs={
        'class':'form-control',
        'placeholder': 'Quantité',
    }), error_messages={'invalid':'La quantité saisie est incorrecte.', 'required':'Saissiez la quantité.'})

    class Meta:
        model = QuantitePoint
        fields = ['qte_stock'] 

    def clean_qte_stock(self, *args, **kwargs):
        qte_stock = self.cleaned_data.get('qte_stock')
        if qte_stock <= 0:
            raise forms.ValidationError("Quantité invalide.")
        else:
            return qte_stock




 #A REVOIR

class FormStockProd(forms.ModelForm):
    qte_stock = forms.IntegerField(label='', widget=forms.TextInput(attrs={
        'class':'form-control',
        'placeholder':'Quantité entrante',
    }), error_messages={'invalid':'La quantité saisie est incorrecte.', 'required':'Saissiez la quantité.'})

    class Meta:
        model = QuantitePoint
        fields = ['qte_stock']

    def clean_qte_stock(self, *args, **kwargs):
        qte_stock = self.cleaned_data.get('qte_stock')
        if qte_stock <= 0:
            raise forms.ValidationError("Quantité invalide.")
        else:
            return qte_stock


#FORMULAIRE DE L'AFFECTATION
class FormAffectProd(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        #POUR LE COMBOX PRODUIT
        self.request = kwargs.pop('request')
        super(FormAffectProd, self).__init__(*args, **kwargs)
        #self.fields['produit'].empty_label = "Choisssez un produit"
        admin = Administrateurs.objects.get(user=self.request.user)
        admin_org = admin.organisation_id
        #self.fields['produit'].queryset=Produits.objects.filter(org_id=admin_org)

        #POUR LE COMBOX POINT DE VENTE
        self.fields['point_vente'].empty_label = "Choisssez un point de vente"
        self.fields['point_vente'].queryset=PointsAffaires.objects.filter(org_id=admin_org)
        
    """produit = forms.ModelChoiceField(queryset=None, label="", widget=forms.Select(attrs={
        'class':'form-select select',
    }))"""

    point_vente = forms.ModelChoiceField(queryset=None, label='', widget=forms.SelectMultiple(attrs={
        'class':'form-select'
    }))

    class Meta:
        model = Produits
        fields = ['point_vente']



#FORM DE HISTO STOK
class FormHistoProd(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        self.request = kwargs.pop('request')
        super(FormHistoProd, self).__init__(*args, **kwargs)

        """admin = Administrateurs.objects.get(user=self.request.user)
        admin_org = admin.organisation_id"""

        #RECUPERATION DE LID AVEC LA SECTION
        id_prod = self.request.session['id_produit']
        produit = get_object_or_404(Produits, id=id_prod)
        
        #POUR LE COMBOX POINT DE VENTE
        self.fields['point'].empty_label = "Choisssez un point de vente"
        self.fields['point'].queryset= produit.point_vente.all()

    point = forms.ModelChoiceField(queryset=None, label='', widget=forms.Select(attrs={
        'class':'form-select select'
    }))

    qte = forms.IntegerField(label='', widget=forms.TextInput(attrs={
        'class':'form-control',
        'placeholder':'Quantité entrante',
    }), error_messages={'invalid':'La quantité saisie est incorrecte.', 'required':'Saissiez la quantité.'})

    class Meta:
        model = HistoProd
        fields = ['point', 'qte']
    
    def clean_qte(self, *args, **kwargs):
        qte = self.cleaned_data.get('qte')
        if qte <= 0:
            raise forms.ValidationError("Quantité invalide.")
        else:
            return qte