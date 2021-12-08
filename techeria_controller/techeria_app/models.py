from django.db import models
from django.db.models.fields import EmailField
from django.contrib.auth.models import User
# Create your models here.

class Products(models.Model):
    image = models.ImageField(null=False, blank=False, upload_to='images/')
    # cat_image = models.ImageField(upload_to='images/', blank=True)

    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    # slug = models.SlugField(max_length=100, unique=True)
    category = models.CharField(max_length=255)

    def __str__(self):
    	return self.name

    class Meta:
        db_table = 'products'


class BuyerModel(models.Model):
    user = models.OneToOneField(User, null=True, blank=True, on_delete=models.CASCADE)
    first_name = models.CharField(max_length=255, blank=True, null=True)
    last_name = models.CharField(max_length=255, blank=True, null=True)
    user_name = models.CharField(max_length=255, blank=True, null=True)
    date_of_birth = models.DateField(blank=True, null=True)
    email = models.EmailField(blank=True, null=True)
    mobile_number = models.CharField(max_length=255, blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    city = models.CharField(max_length=255, blank=True, null=True)
    state = models.CharField(max_length=255, blank=True, null=True)
    zip_code = models.CharField(max_length=255, blank=True, null=True)
    country = models.CharField(max_length=20, blank=True, null=True)
    device = models.CharField(max_length=200, null=True, blank=True)

    def __str__(self):
        if self.user_name:
            user_name = self.user_name
        else:
            user_name = self.device
        return str(user_name)

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

# class Trending(models.Model):
#     # id = models.BigIntegerField()
#     image = models.ImageField(null=False, blank=False, upload_to='images/')
#     name = models.CharField(max_length=255)
#     price = models.FloatField()
#     description = models.TextField()
#     category = models.CharField(max_length=255)
#
#     class Meta:
#         db_table = 'trending'

class Trending(models.Model):
    # id = models.BigAutoField(primary_key=True)
    image = models.ImageField(null=False, blank=False, upload_to='images/')
    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    category = models.CharField(max_length=255)

    class Meta:
        # managed = False
        db_table = 'trending'

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

    def __str__(self):
        return self.techeria_app





#Payment models below
class Payment(models.Model):
    buyer = models.ForeignKey(BuyerModel, on_delete=models.CASCADE, null=True)
    payment_id = models.CharField(max_length=100)
    payment_method = models.CharField(max_length=100)
    amount_paid = models.CharField(max_length=100) # this is the total amount paid
    status = models.CharField(max_length=100)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.payment_id

class Order(models.Model):
    buyer = models.ForeignKey(
    BuyerModel, on_delete=models.SET_NULL, null=True, blank=True)
    order_date = models.DateTimeField(auto_now_add=True)
    complete = models.BooleanField(default=False)
    transaction_id = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return str(self.id)

    @property
    def get_cart_total(self):
        orderitems = self.orderitem_set.all()
        total = sum([item.get_total for item in orderitems])
        return total

    @property
    def get_cart_items(self):
        orderitems = self.orderitem_set.all()
        total = sum([item.quantity for item in orderitems])
        return total

    class Meta:
        db_table = "orders"


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


class ShippingAddress(models.Model):
    buyer = models.ForeignKey(BuyerModel, on_delete=models.SET_NULL, null=True)
    order = models.ForeignKey(Order, on_delete=models.SET_NULL, null=True)
    address = models.CharField(max_length=200, null=False)
    city = models.CharField(max_length=200, null=False)
    state = models.CharField(max_length=200, null=False)
    zipcode = models.CharField(max_length=200, null=False)
    date_added = models.DateTimeField(auto_now_add=True)

    def __str__(self):
	    return self.address

    class Meta:
        db_table = "shippingaddress"



class PlaceOrder(models.Model):
    STATUS = (
        ('New', 'New'),
        ('Accepted', 'Accepted'),
        ('Completed', 'Completed'),
        ('Cancelled', 'Cancelled'),
    )

    user = models.ForeignKey(BuyerModel, on_delete=models.SET_NULL, null=True)
    payment = models.ForeignKey(Payment, on_delete=models.SET_NULL, blank=True, null=True)
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    phone = models.CharField(max_length=15)
    email = models.EmailField(max_length=50)
    address_line_1 = models.CharField(max_length=50)
    country = models.CharField(max_length=50)
    state = models.CharField(max_length=50)
    city = models.CharField(max_length=50)
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



class CompleteOrder(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    email = models.EmailField()
    mobile_number = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    state = models.CharField(max_length=255)
    zip_code = models.CharField(max_length=255)
    country = models.CharField(max_length=20)
    price = models.FloatField()
    item = models.IntegerField()


    class Meta:
        db_table = "complete_order"
