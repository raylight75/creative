from django.shortcuts import render
from .models import Slider


def index(request):
    sliders = Slider.objects.all()
    return render(request, 'frontend/index.html', {'sliders': sliders})
