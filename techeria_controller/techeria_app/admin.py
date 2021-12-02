from django.contrib import admin

# Register your models here.
from techeria_app.models import Products,BuyerModel, SellerModel

admin.site.register(Products)
admin.site.register(BuyerModel)
admin.site.register(SellerModel)

