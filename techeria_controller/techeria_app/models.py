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


class Cameras(models.Model):
    image = models.ImageField(null=False, blank=False, upload_to='images/')
    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    category = models.CharField(max_length=255)

    class Meta:

        db_table = 'camera'


class Accessories(models.Model):
    image = models.ImageField(null=False, blank=False, upload_to='images/')
    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    category = models.CharField(max_length=255)

    class Meta:

        db_table = 'accessorie'



#Payment models below
class Payment(models.Model):
    user = models.ForeignKey(BuyerModel, on_delete=models.CASCADE)
    payment_id = models.CharField(max_length=100)
    payment_method = models.CharField(max_length=100)
    amount_paid = models.CharField(max_length=100) # this is the total amount paid
    status = models.CharField(max_length=100)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.payment_id


class Order(models.Model):
    STATUS = (
        ('New', 'New'),
        ('Accepted', 'Accepted'),
        ('Completed', 'Completed'),
        ('Cancelled', 'Cancelled'),
    )

    user = models.ForeignKey(BuyerModel, on_delete=models.SET_NULL, null=True)
    payment = models.ForeignKey(Payment, on_delete=models.SET_NULL, blank=True, null=True)
    order_number = models.CharField(max_length=20)
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    phone = models.CharField(max_length=15)
    email = models.EmailField()
    mobile_number = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    state = models.CharField(max_length=255)
    zip_code = models.CharField(max_length=255)
    country = models.CharField(max_length=20)
    order_note = models.CharField(max_length=100, blank=True)
    order_total = models.FloatField()
    tax = models.FloatField()
    status = models.CharField(max_length=10, choices=STATUS, default='New')
    ip = models.CharField(blank=True, max_length=20)
    is_ordered = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)


    def full_name(self):
        return f'{self.first_name} {self.last_name}'

    def full_address(self):
        return f'{self.address_line_1} {self.address_line_2}'

    def __str__(self):
        return self.first_name


class OrderProduct(models.Model):
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    payment = models.ForeignKey(Payment, on_delete=models.SET_NULL, blank=True, null=True)
    user = models.ForeignKey(BuyerModel, on_delete=models.CASCADE)
    product = models.ForeignKey(Products, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    product_price = models.FloatField()
    ordered = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.product.product_name
