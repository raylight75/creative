from django.shortcuts import render
from backend.models import Image, Info, Service


def index(request):
    sliders = Image.objects.filter(cat_id=7)
    return render(request, 'frontend/index.html', {'sliders': sliders})


def aboutme(request):
    return render(request, 'frontend/aboutme.html')


def contacts(request):
    info = Info.objects.all()
    return render(request, 'frontend/contacts.html', {'info': info})


def services(request):
    service = Service.objects.all()
    sliders = Image.objects.get(cat_id=8)
    return render(request, 'frontend/services.html', {'service': service, 'sliders': sliders})
