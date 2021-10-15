from django.shortcuts import render
from .models import Products

# Create your views here.
def index(request):
    product = Products.objects.all()
    context = {
        'product': product
    }
    return render(request, 'index.html', context)