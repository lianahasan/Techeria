from django.contrib import admin

# Register your models here.
from techeria_app.models import Products,BuyerModel, SellerModel ,Payment, Order, OrderItem, PlaceOrder, CompleteOrder

admin.site.register(Products)
admin.site.register(BuyerModel)
admin.site.register(SellerModel)

admin.site.register(Payment)
admin.site.register(Order)
admin.site.register(PlaceOrder)
admin.site.register(OrderItem)
admin.site.register(CompleteOrder)
