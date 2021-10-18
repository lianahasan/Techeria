from django.shortcuts import render
from .models import Products

# Create your views here.
def index(request):
    product = Products.objects.all()
    context = {
        'product': product
    }
    return render(request, 'index.html', context)

def about(request):
    return render(request, 'about.html')

def contact(request):
    return render(request, 'contact.html')

def watch(request):
    return render(request, 'watch.html')