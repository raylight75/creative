from __future__ import unicode_literals
from django.utils.safestring import mark_safe
from django.contrib.sites.models import Site

from django.db import models


class Img_Cat(models.Model):
    cat = models.CharField(max_length=32)

    def __str__(self):
        return self.cat

    class Meta:
        ordering = ('id',)
        verbose_name = 'category'
        verbose_name_plural = 'Image Categories'
        db_table = 'img_cat'


class Siteimage_Cat(models.Model):
    cat = models.CharField(max_length=32)

    def __str__(self):
        return self.cat

    class Meta:
        ordering = ('id',)
        verbose_name = 'category'
        verbose_name_plural = 'SiteImage Categories'
        db_table = 'siteimage_cat'


class Image(models.Model):
    title = models.CharField(max_length=32)
    cat = models.ForeignKey(Img_Cat)
    image = models.ImageField(upload_to="images")

    def thumb(self):
        return mark_safe('<img src="/public/%s" width="40" height="20" />' % (self.image))
        # for production
        # return mark_safe('<img src="/portfolio/public/%s" width="40" height="20" />' % (self.image))

    class Meta:
        ordering = ('id',)
        verbose_name_plural = 'Portfolio Images'
        db_table = 'image'


class Site_image(models.Model):
    title = models.CharField(max_length=32)
    cat = models.ForeignKey(Siteimage_Cat)
    image = models.ImageField(upload_to="images")

    def thumb(self):
        return mark_safe('<img src="/public/%s" width="40" height="20" />' % (self.image))

    def link(self):
        return '<img class="img-responsive" src="%s/public/%s" alt="">' % (Site.objects.get_current().domain, self.image)

    class Meta:
        ordering = ('id',)
        verbose_name = 'image'
        verbose_name_plural = 'Site Images'
        db_table = 'site_image'


class Info(models.Model):
    notice = models.CharField(max_length=32)
    title = models.CharField(max_length=32)
    text = models.TextField()
    email = models.CharField(max_length=32)
    phone = models.CharField(max_length=32)
    skype = models.CharField(max_length=32)
    address = models.CharField(max_length=32)
    cat = models.CharField(max_length=32)

    def __str__(self):
        return self.email

    class Meta:
        db_table = 'info'


class Service(models.Model):
    text = models.TextField()
    name = models.CharField(max_length=32)
    image = models.ImageField(upload_to="images")

    def thumb(self):
        return mark_safe('<img src="/public/%s" width="20" height="20" />' % (self.image))

    def __str__(self):
        return self.name

    class Meta:
        ordering = ('id',)
        db_table = 'service'
