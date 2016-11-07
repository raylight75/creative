from django.contrib import admin

from backend.models import Slider, Img_cat,Image


@admin.register(Slider)
class SliderAdmin(admin.ModelAdmin):
    list_per_page = 10
    list_display = ('id', 'thumb', 'title', 'category',)
    search_fields = ('id', 'title',)


@admin.register(Img_cat)
class ImgcatAdmin(admin.ModelAdmin):
    list_per_page = 5
    list_display = ('id', 'cat',)
    search_fields = ('cat',)


@admin.register(Image)
class ImageAdmin(admin.ModelAdmin):
    list_per_page = 10
    list_display = ('id', 'thumb', 'title', 'cat', 'image',)
    search_fields = ('id', 'title',)


admin.site.site_header = 'Portfolio Admin'
