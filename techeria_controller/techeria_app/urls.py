from django.urls import path
from . import views


urlpatterns = [
    path('', views.index, name='index'),
    path('about', views.about, name='about'),
    path('contact', views.contact, name='contact'),
    path('laptop', views.laptop, name='laptop'),
    path('smartphone', views.smartphone, name='smartphone'),
  
    path('product', views.product, name='product'),
    path('cart', views.cart, name='cart'),
    path('checkout/', views.checkout, name='checkout'),
    path('search', views.search, name='search'),
    path('productInfo', views.productInfo, name='productInfo'),

] 