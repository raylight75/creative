from django.shortcuts import render
from backend.models import Slider, Info, Service, Image, Img_cat


def index(request):
    sliders = Slider.objects.filter(cat_id=7)
    return render(request, 'frontend/index.html', {'sliders': sliders})


def aboutme(request):
    info = Info.objects.get(id=1)
    sliders = Slider.objects.all()
    return render(request, 'frontend/aboutme.html', {'info': info, 'sliders': sliders})


def contacts(request):
    info = Info.objects.all()
    return render(request, 'frontend/contacts.html', {'info': info})


def portfolio(request):
    images = Image.objects.all()
    cats = Img_cat.objects.filter(id__range=('2','6'))    
    return render(request, 'frontend/portfolio.html', {'images': images, 'cats': cats})


def services(request):
    service = Service.objects.all()
    sliders = Slider.objects.get(cat_id=8)
    return render(request, 'frontend/services.html', {'service': service, 'sliders': sliders})
