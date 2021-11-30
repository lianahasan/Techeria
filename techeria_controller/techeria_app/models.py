from django.db import models
from django.db.models.fields import EmailField

# Create your models here.

class Products(models.Model):
    image = models.ImageField(null=False, blank=False, upload_to='images/')
    # cat_image = models.ImageField(upload_to='images/', blank=True)

    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    # slug = models.SlugField(max_length=100, unique=True)
    category = models.CharField(max_length=255,unique=True)

    class Meta:
        db_table = 'products'


class BuyerModel(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    user_name = models.CharField(max_length=255)
    date_of_birth = models.DateField()
    email = models.EmailField()
    mobile_number = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    state = models.CharField(max_length=255)
    zip_code = models.CharField(max_length=255)
    country = models.CharField(max_length=20)


    class Meta:
        db_table = "buyer"


class SellerModel(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    user_name = models.CharField(max_length=255)
    date_of_birth = models.DateField()
    email = models.EmailField()
    mobile_number = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    state = models.CharField(max_length=255)
    zip_code = models.CharField(max_length=255)
    country = models.CharField(max_length=20)


    class Meta:
        db_table = "seller"


class Laptops(models.Model):
    # id = models.BigIntegerField()
    image = models.ImageField(null=False, blank=False, upload_to='images/')
    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    category = models.CharField(max_length=255)

    class Meta:

        db_table = 'laptops'

class Smartphone(models.Model):
    # id = models.BigIntegerField()
    image = models.ImageField(null=False, blank=False, upload_to='images/')
    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    category = models.CharField(max_length=255)

    class Meta:
        # managed = False
        db_table = 'smartphone'

class Order(models.Model):
    buyer = models.ForeignKey(BuyerModel, on_delete=models.SET_NULL, null=True, blank=True)
    order_date = models.DateTimeField(auto_now_add=True)
    complete = models.BooleanField(default=False)
    transaction_id = models.CharField(max_length=100, null=True)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = "order"

class OrderItem(models.Model):
    product = models.ForeignKey(Products, on_delete=models.SET_NULL, null=True)
    order = models.ForeignKey(Order, on_delete=models.SET_NULL, null=True)
    quantity = models.IntegerField(default=0, null=True, blank=True)
    date_added = models.DateTimeField(auto_now_add=True)

    @property
    def get_total(self):
        total = self.product.price * self.quantity
        return total
    class Meta:
        db_table = "order_items"






    def __str__(self):
        return self.techeria_app
