from clients.models import Clients
from django import forms
from django.forms.widgets import EmailInput, TextInput



class FormClient(forms.ModelForm):
    nom = forms.CharField(label='', widget=TextInput(attrs={
        'placeholder':'Nom',
        'class':'form-control',
        'maxlength':'35',
    }), error_messages={'required':'Saisissez le nom du client.'})

    prenoms = forms.CharField(label='', widget=TextInput(attrs={
        'placeholder':'Prénoms',
        'class':'form-control',
        'maxlength':'55',
    }), error_messages={'required':'Saisissez le prénom du client.'})
 
    telephone_p = forms.IntegerField(label='', widget=TextInput(attrs={
        'placeholder':'Numéro de téléphone',
        'class':'form-control',
        'maxlength':'8',
    }), error_messages={'invalid':'Le téléphone saisi est incorrect!', 'required':'Saisissez le numéro de téléphone'})

    telephone_s = forms.IntegerField(label='', widget=TextInput(attrs={
        'placeholder':'Numéro de téléphone(Optionel)',
        'class':'form-control',
        'maxlength':'8',
    }), required=False, error_messages={'invalid':'Le téléphone saisi est incorrect!'})

    adr_mail = forms.EmailField(label='', widget=EmailInput(attrs={
        'placeholder':'Adresse e-mail',
        'class':'form-control',
    }), required=False, error_messages={'invalid':'L\'adresse saisi est incorrect!'})

    adr_phisique = forms.CharField(label='', widget=TextInput(attrs={
        'placeholder':'Adresse',
        'class':'form-control',
    }), required=False)

    image = forms.ImageField(label='Votre photo', widget=forms.FileInput(attrs={
        'class':'form-control'
    }), required=False)

    class Meta:
        model = Clients
        fields = ['nom', 'prenoms', 'telephone_p', 'telephone_s', 'adr_mail', 'adr_phisique', 'image']

    def clean_telephone_p(self, *args, **kwargs):
        telephone_p = str(self.cleaned_data.get('telephone_p'))
        if len(telephone_p) != 8:
            raise forms.ValidationError('Le numéro de téléphone saisi est incorrect.')
        else:
            return telephone_p

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