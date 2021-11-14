from django.contrib import admin

# Register your models here.
from techeria_app.models import Products,BuyerModel,Laptops,Smartphone

admin.site.register(Products)
admin.site.register(Laptops)
admin.site.register(BuyerModel)
admin.site.register(Smartphone)
