from django.contrib import admin

from backend.models import Img_cat, Slider, Info, Service, Image


@admin.register(Img_cat)
class ImgcatAdmin(admin.ModelAdmin):
    list_per_page = 5
    list_filter = ('cat',)
    list_display = ('id', 'cat',)
    search_fields = ('cat',)


@admin.register(Image)
class ImageAdmin(admin.ModelAdmin):
    list_per_page = 10
    list_filter = ('id', 'title')
    list_display = ('id', 'thumb', 'title', 'cat', 'image',)
    search_fields = ('id', 'title',)


@admin.register(Slider)
class SliderAdmin(admin.ModelAdmin):
    list_per_page = 10
    list_filter = ('id', 'title')
    list_display = ('id', 'thumb', 'title', 'cat', 'image',)
    search_fields = ('id', 'title',)


@admin.register(Info)
class InfoAdmin(admin.ModelAdmin):
    list_filter = ('email', 'skype')
    list_display = ('id', 'aboutme', 'email', 'phone', 'skype', 'address')
    search_fields = ('id', 'email',)


@admin.register(Service)
class ServiceAdmin(admin.ModelAdmin):
    list_filter = ('name',)
    list_display = ('id', 'text', 'name', 'image', 'thumb')
    search_fields = ('id', 'name',)


admin.site.site_header = 'Portfolio Admin'
