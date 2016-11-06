from __future__ import unicode_literals
from django.utils.safestring import mark_safe

from django.db import models


class Slider(models.Model):
    img = models.ImageField(upload_to="images")
    title = models.CharField(max_length=32)
    category = models.CharField(max_length=32)

    def thumb(self):
        return mark_safe('<img src="/public/%s" width="40" height="20" />' % (self.img))

    class Meta:
        ordering = ('id',)
        db_table = 'slider'
