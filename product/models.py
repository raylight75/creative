# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
#   * Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals
from django.db import models
from django.utils.safestring import mark_safe


class Brand(models.Model):
    brand = models.CharField(max_length=45)

    def __str__(self):
        return self.brand

    class Meta:
        db_table = 'brand'


class Order(models.Model):
    user_id = models.IntegerField()
    order_date = models.DateTimeField()
    status = models.CharField(max_length=32)
    product_id = models.IntegerField()
    size = models.CharField(max_length=32)
    img = models.CharField(max_length=64)
    color = models.CharField(max_length=32)
    quantity = models.IntegerField()
    amount = models.IntegerField()

    def __str__(self):
        return self.size

    class Meta:
        db_table = 'order'
        default_permissions = ('add', 'change', 'delete', 'view')


class Size(models.Model):
    size_id = models.IntegerField()
    size = models.CharField(max_length=32)

    def __str__(self):
        return self.size

    class Meta:
        db_table = 'size'


class Product(models.Model):
    slug = models.CharField(max_length=45)
    name = models.CharField(max_length=45)
    description = models.TextField()
    a_img = models.ImageField(upload_to="images")
    # a_img = models.CharField(max_length=45)
    b_img = models.CharField(max_length=45)
    c_img = models.CharField(max_length=45)
    brand = models.ForeignKey(Brand)
    sizes = models.ManyToManyField(Size, through='Productsize')
    cat_id = models.IntegerField()
    parent_id = models.IntegerField()
    quantity = models.IntegerField(blank=True, null=True)
    price = models.FloatField()

    def thumb(self):
        return mark_safe('<img src="/public/%s" width="25" height="40" />' % (self.a_img))

    def product_sizes(self):
        return ', '.join([a.size for a in self.sizes.all()])

    product_sizes.short_description = "Product Sizes"
    product_sizes.allow_tags = True

    class Meta:
        ordering = ('id',)
        db_table = 'product'


class Productsize(models.Model):
    product = models.ForeignKey(Product)
    size = models.ForeignKey(Size)

    def __str__(self):
        return str(self.size)

    class Meta:
        db_table = 'productsize'

