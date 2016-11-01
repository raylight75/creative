from django.contrib.admin import AdminSite

from .models import Product


class ProductSite(AdminSite):
    site_header = 'Products Admin'


admin_site = ProductSite(name='product')
admin_site.register(Product)
