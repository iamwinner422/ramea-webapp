from django import forms
from django.forms.fields import CharField, ChoiceField
from django.forms.widgets import Select, TextInput
from categories.models import TypeCategorie, Categories


class FormCategorie(forms.ModelForm):
    nom = forms.CharField(label='', widget=TextInput(attrs={
        'placeholder':'Nom de la catégorie',
        'class':'form-control',
        'maxlenght':'35',
    }), error_messages={'required':'Saisissez le nom de la catégorie.'})

    typecategorie = forms.ModelChoiceField(queryset=TypeCategorie.objects.all(), widget=forms.Select(attrs={
        'class':'form-select select',
    }))

    class Meta:
        model = Categories
        fields = ['nom', 'typecategorie']

    def __init__(self, *args, **kwargs):
        super(FormCategorie, self).__init__(*args, **kwargs)
        self.fields['typecategorie'].empty_label = "Choisssez un type" #POUR DE FINIR UN MESSAGE DANS LE SELECT