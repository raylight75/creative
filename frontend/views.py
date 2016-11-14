from django.shortcuts import render
from backend.models import Slider, Info, Service, Image, Img_Cat
from .forms import ContactForm


def index(request):
    sliders = Slider.objects.filter(cat_id=1)
    return render(request, 'frontend/index.html', {'sliders': sliders})


def aboutme(request):
    info = Info.objects.get(id=1)
    sliders = Slider.objects.all()
    return render(request, 'frontend/aboutme.html', {'info': info, 'sliders': sliders})


def contacts(request):
    form_class = ContactForm
    info = Info.objects.all()
    return render(request, 'frontend/contacts.html', {'info': info, 'form': form_class})


def portfolio(request):
    images = Image.objects.all()
    cats = Img_Cat.objects.all()
    return render(request, 'frontend/portfolio.html', {'images': images, 'cats': cats})


def services(request):
    service = Service.objects.all()
    sliders = Slider.objects.get(cat_id=2)
    return render(request, 'frontend/services.html', {'service': service, 'sliders': sliders})
