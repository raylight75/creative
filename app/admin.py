from django.contrib import admin

from .models import Product, Order, Productsize


class ProductInline(admin.TabularInline):
    model = Productsize
    extra = 1


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    inlines = (ProductInline,)
    list_per_page = 10
    list_display = ('id', 'name', 'thumb', 'quantity', 'price',)
    search_fields = ('id', 'name',)


@admin.register(Order)
class PaginateAdmin(admin.ModelAdmin):
    list_filter = ('size', 'color')
    list_display = ('order_date', 'size', 'color', 'quantity', 'amount',)
    list_per_page = 10

    def get_queryset(self, request):
        current_user = request.user
        qs = super(PaginateAdmin, self).get_queryset(request)
        if request.user.has_perm('app.view_order'):
            return qs.filter(user_id=current_user.id)

    def has_change_permission(self, request, obj=None):
        # user can view the change list
        if not obj and request.user.has_perm('app.view_order'):
            return True
        # user can view the change form and change the obj
        return request.user.has_perm('app.change_order')
        # admin.register(Product,Brand,Order,Productsize)(admin.ModelAdmin)
        # admin.site.register(ProductAdmin)
        # myadmin.register(Order)
