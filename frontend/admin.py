from django.contrib import admin

from .models import Slider


@admin.register(Slider)
class SliderAdmin(admin.ModelAdmin):
    list_per_page = 10
    list_display = ('id', 'thumb', 'title', 'category',)
    search_fields = ('id', 'title',)

admin.site.site_header = 'Portfolio Admin'
