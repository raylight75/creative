from django.conf.urls import url
from app.views import CatalogListView
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^users$', views.users, name='users'),
    url(r'^order$', views.order, name='order'),
    # url(r'^orders$', views.orders, name='orders'),
    url(r'^orders/(?P<id>[0-9]+)/$', views.orders, name='id'),
    url(r'^profile$', views.profile, name='profile'),
    url(r'^products$', views.get_all_products, name='products'),
    # url(r'^products/(?P<id>[0-9]+)/$', views.get_by_id, name='id'),
    url(r'^catalog$', CatalogListView.as_view(), name='catalog'),
    # url(r'^catalog/(?P<id>[0-9]+)/$', CatalogListView.as_view(), name='parameters'),
]
