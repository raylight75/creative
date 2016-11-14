from django import forms


class ContactForm(forms.Form):
    first_name = forms.CharField(required=True)
    last_name = forms.CharField(required=True)
    contact_email = forms.EmailField(required=True)
    website = forms.CharField(required=True)
    message = forms.CharField(
        required=True,
        widget=forms.Textarea
    )
