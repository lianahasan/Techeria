"""techeria_controller URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from techeria_app import views

from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views



urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),
    path('about', views.about, name='about'),
    path('contact', views.contact, name='contact'),
    path('laptop', views.laptop, name='laptop'),
    path('smartphone', views.smartphone, name='smartphone'),
    path('loginpage', views.loginpage, name='loginpage'),
    path('registration', views.registration, name='registration'),
    path('product', views.product, name='product'),
    path('cart', views.cart, name='cart'),
    path('checkout/', views.checkout, name='checkout'),
    path('search', views.search, name='search'),
    path('p/<int:i>/', views.productInfo, name='p'),
    path('logout', views.logout, name='logout'),
    path('forgotPassword',views.forgotPassword,name='forgotPassword'),
    
    path('reset_password/',auth_views.PasswordResetView.as_view(),name='reset_password'),
    path('seller', views.seller, name='seller'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
