from django import forms


class ContactForm(forms.Form):    
    contact_email = forms.EmailField(
    	label="",
    	required=True,
        max_length=20,
        widget=forms.EmailInput(
            attrs={'class': "cont-5-inp name", 'placeholder': "E-mail address*"}),
    )
    subject = forms.CharField(
    	label="",
    	required=True,
        max_length=20,
        widget=forms.TextInput(
            attrs={'class': "cont-5-inp email", 'placeholder': "Subject"}),
    )
    message = forms.CharField(
    	label="",
    	required=True,
        max_length=200,
        widget=forms.Textarea(
            attrs={'class': "cont-5-inp", 'placeholder': "Message*"}),
    )    
