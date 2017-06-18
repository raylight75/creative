from backend.models import SiteImage


def slider_image(request):
    slider = SiteImage.objects.get(cat_id=5)
    return {'slider': slider}
