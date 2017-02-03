from django.shortcuts import render, redirect
from django.contrib import messages
from backend.models import SiteImage, Info, Service, Image, ImgCat
from .forms import ContactForm
from django.core.mail import send_mail, BadHeaderError
from django.http import HttpResponse


def index(request):
    sliders = SiteImage.objects.filter(cat_id=1)
    return render(request, 'frontend/index.html', {'sliders': sliders})


def aboutme(request):
    info = Info.objects.get(cat='about')
    skills = Info.objects.filter(cat='skills')
    sliders = SiteImage.objects.all()
    context = {'info': info, 'sliders': sliders, 'skills': skills}
    return render(request, 'frontend/aboutme.html', context)


def contacts(request):
    if request.method == 'GET':
        form_class = ContactForm
        info = Info.objects.filter(cat='contact')
        context = {"form": form_class, "info": info}
    else:
        form = ContactForm(request.POST)
        if form.is_valid():
            subject = form.cleaned_data['subject']
            from_email = form.cleaned_data['contact_email']
            message = form.cleaned_data['message']
            try:
                send_mail(subject, message, from_email, ['raylight75@tihoblajev.com'])
            except BadHeaderError:
                return HttpResponse('Invalid header found.')
            return redirect('thanks')
    return render(request, 'frontend/contacts.html', context)


def thanks(request):
    messages.success(request, 'Thank you for your Email.')
    form_class = ContactForm
    info = Info.objects.all()
    context = {"form": form_class, "info": info}
    return render(request, 'frontend/contacts.html', context)


def portfolio(request):
    images = Image.objects.all()
    cats = ImgCat.objects.all()
    context = {'images': images, 'cats': cats}
    return render(request, 'frontend/portfolio.html', context)


def services(request):
    service = Service.objects.all()
    sliders = SiteImage.objects.get(cat_id=2)
    context = {'service': service, 'sliders': sliders}
    return render(request, 'frontend/services.html', context)
