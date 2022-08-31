from administrateurs.models import Administrateurs
from django import forms
from django.forms import fields
from django.forms.fields import CharField
from services.models import Services
from categories.models import Categories
from points_affaire.models import PointsAffaires


class FormServices(forms.ModelForm):
    
    def __init__(self, *args, **kwargs):
        self.request = kwargs.pop('request')
        super(FormServices, self).__init__(*args, **kwargs)
        
        admin = Administrateurs.objects.get(user=self.request.user)
        admin_org = admin.organisation_id
        self.fields['categorie'].queryset=Categories.objects.filter(typecategorie_id=2, org_id=admin_org)
        self.fields['categorie'].empty_label = "Choisssez une catégorie"
        
        self.fields['point_vente'].empty_label= "Choisssez un ou plusieurs point de vente"
        self.fields['point_vente'].queryset= PointsAffaires.objects.filter(org_id=admin_org)

    class Meta:
        model = Services
        fields = ['nom', 'categorie', 'point_vente']

    nom = forms.CharField(max_length=35, label='', widget=forms.TextInput(attrs={
        'class':'form-control',
        'placeholder':'Nom du service',
    }), error_messages={'required':'Saisissez le nom du service'})

    categorie = forms.ModelChoiceField(queryset=None, widget=forms.Select(attrs={
        'class':'form-select select',
    }))

    point_vente = forms.ModelMultipleChoiceField(queryset=None, widget=forms.SelectMultiple(attrs={
        'class':'form-select select-m',
        'multiple':'multiple',
    }))
    #ON DOIT FILTRER LA CATEGORIE AVEC LE TYPE ET LE ID DE L'ORGANISATION


   
        

    