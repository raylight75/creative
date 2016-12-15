from django.contrib import admin

from backend.models import Img_Cat, Slider, Info, Service, Image, Sld_Cat


@admin.register(Img_Cat)
class ImgCatAdmin(admin.ModelAdmin):
    list_per_page = 5
    list_filter = ('cat',)
    list_display = ('id', 'cat',)
    list_display_links = ('cat',)
    search_fields = ('cat',)


@admin.register(Sld_Cat)
class SldCatAdmin(admin.ModelAdmin):
    list_per_page = 5
    list_filter = ('cat',)
    list_display = ('id', 'cat',)
    list_display_links = ('cat',)
    search_fields = ('cat',)


@admin.register(Image)
class ImageAdmin(admin.ModelAdmin):
    list_per_page = 10
    list_filter = ('cat',)
    list_display = ('id', 'thumb', 'title', 'cat', 'image',)
    list_display_links = ('title',)
    search_fields = ('cat', 'title',)


@admin.register(Slider)
class SliderAdmin(admin.ModelAdmin):
    list_per_page = 10
    list_filter = ('cat', 'title')
    list_display = ('id', 'thumb', 'title', 'cat', 'image',)
    list_display_links = ('title', 'cat')
    search_fields = ('cat', 'title',)


@admin.register(Info)
class InfoAdmin(admin.ModelAdmin):
    list_filter = ('email', 'skype')
    list_display = ('id', 'aboutme', 'email', 'phone', 'skype', 'address')
    list_display_links = ('email', 'phone')
    search_fields = ('id', 'email',)


@admin.register(Service)
class ServiceAdmin(admin.ModelAdmin):
    list_filter = ('name',)
    list_display = ('id', 'text', 'name', 'image', 'thumb')
    list_display_links = ('name',)
    search_fields = ('id', 'name',)


admin.site.site_header = 'Portfolio Admin'
admin.site.site_title = 'Portfolio Admin'
