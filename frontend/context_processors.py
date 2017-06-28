from backend.models import SiteImage


def slider_image(request):
    sliders = SiteImage.objects.filter(cat_id=1)
    services = SiteImage.objects.get(cat_id=2)
    blog = SiteImage.objects.get(cat_id=5)
    about = SiteImage.objects.all()
    context = {'blog': blog, 'sliders': sliders,
               'services': services, 'about': about}
    return context
