from django.shortcuts import render
from backend.models import Image


def index(request):
    sliders = Image.objects.filter(cat_id=7)
    return render(request, 'frontend/index.html', {'sliders': sliders})


def aboutme(request):
    return render(request, 'frontend/aboutme.html')


def contacts(request):
    return render(request, 'frontend/contacts.html')
