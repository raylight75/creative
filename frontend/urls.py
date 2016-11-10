from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^contacts$', views.contacts, name='contacts'),
    url(r'^aboutme$', views.aboutme, name='aboutme'),
    url(r'^portfolio$', views.portfolio, name='portfolio'),
    url(r'^services$', views.services, name='services'),
]
