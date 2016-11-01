from django.http import HttpResponse
from django.http import HttpResponseForbidden
from django.shortcuts import render
from django.views.generic.list import ListView
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from .models import Product, Order
from .forms import OrderForm
from django.contrib.auth.decorators import login_required
from django.contrib.admin.views.decorators import staff_member_required
from django.contrib.auth.decorators import permission_required


class CatalogListView(ListView):
    model = Product
    # template_name = 'app/car_list.html'
    paginate_by = 10

    # Filter product
    # def get_queryset(self):
    #     return Product.objects.filter(id=self.kwargs['id'])


def index(request):
    return render(request, 'index.html')
    # return HttpResponse("Hello, world. You're at the polls index.")


def profile(request):
    return render(request, 'user_profile.html')


def order(request):
    form = OrderForm(request.POST or None)
    context = {"form": form}
    if form.is_valid():
        # form.save()
        # print request.POST[''] #not recommended only in test
        instance = form.save(commit=False)
        instance.user_id = request.user.id
        instance.save()
        context = {
            "title": "Thank you for your order"
        }
    return render(request, 'order.html', context)


@login_required(login_url='/admin/login/?next=/admin/')
# @staff_member_required(login_url='/admin/login/?next=/admin/')
# @permission_required('is_superuser',login_url='/admin/login/?next=/admin/')
def users(request):
    return HttpResponse("Hello, You are visit admin page.")


# paginate result
def get_all_products(request):
    product = Product.objects.all()
    page = request.GET.get('page')
    paginator = Paginator(product, 25)  # Show 25 contacts per page

    try:
        result = paginator.page(page)
    except PageNotAnInteger:
        # If page is not an integer, deliver first page.
        result = paginator.page(1)
    except EmptyPage:
        # If page is out of range (e.g. 9999), deliver last page of results.
        result = paginator.page(paginator.num_pages)

        # return HttpResponse(product)
    return render(request, 'start.html', {'product': result})


# get single product
# def orders(request, id):
# remove for loop in view
def orders(request, id):
    #   for single item
    if int(id) != request.user.id:
        return HttpResponseForbidden('You cannot view this order')
    result = Order.objects.get(id=id)
    #   for all orders
    #   result = Order.objects.filter(user_id=request.user.id)
    return render(request, 'user_order.html', {'result': result})
