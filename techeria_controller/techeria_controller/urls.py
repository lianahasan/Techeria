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




from techeria_app.views import VerificationView
from django.contrib.auth import views as auth_views



urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),
    path('about', views.about, name='about'),
    path('contact', views.contact, name='contact'),
    path('laptop', views.laptop, name='laptop'),
    path('smartphone', views.smartphone, name='smartphone'),
    path('camera', views.camera, name='camera'),
    path('accessorie', views.accessorie, name='accessorie'),
    path('loginpage', views.loginpage, name='loginpage'),
    path('registration', views.registration, name='registration'),
    path('product/<int:pk>/', views.product, name="product"),
    path('cart', views.cart, name='cart'),
    path('remove_cart/<int:pk>/', views.remove_cart, name="remove_cart"),
    path('ourproducts', views.ourproducts, name='ourproducts'),
    path('checkout/', views.checkout, name='checkout'),
    path('search', views.search, name='search'),
    path('p/<int:pk>/', views.productInfo, name='p'),
    path('logout', views.logout, name='logout'),
    path('notFound', views.notFound, name='notFound'),
    path('complete_order', views.complete_order, name='complete_order'),


    #path('forgotPassword',views.forgotPassword,name='forgotPassword'),

    path('addproduct', views.addproduct, name='addproduct'),

    path('activate/<uidb64>/<token>',VerificationView.as_view(), name='activate'),

    path('reset_password/', auth_views.PasswordResetView.as_view(template_name = 'reset_password.html'), name='reset_password'),
    path('reset_password_sent/', auth_views.PasswordResetDoneView.as_view(template_name = 'password_reset_send.html'), name='password_reset_done'),
    path('reset/<uidb64>/<token>', auth_views.PasswordResetConfirmView.as_view(template_name = 'password_reset_confirm.html'), name='password_reset_confirm'),
    path('reset_password_complete/', auth_views.PasswordResetCompleteView.as_view(template_name = 'password_reset_done.html'), name='password_reset_complete'),





    path('place_order', views.place_order, name='place_order'),
    path('payments/', views.payments, name='payments'),
    # path('order_complete/', views.order_complete, name='order_complete'),

    path('seller', views.seller, name='seller'),



] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
