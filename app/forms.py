from django import forms
from .models import Order


class OrderForm(forms.ModelForm):
    def clean_size(self, length=3):
        size = self.cleaned_data.get('size')
        if len(str(size)) != length:
            raise forms.ValidationError("Please use valid size")
        return size

    class Meta:
        model = Order
        fields = ['status', 'product_id', 'size', 'color', 'quantity', 'amount']
