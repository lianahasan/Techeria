from django.urls import path
from . import views



urlpatterns = [
  
    path('loginpage', views.loginpage, name='loginpage'),
    path('registration', views.registration, name='registration'),

    path('logout', views.logout, name='logout'),
] 