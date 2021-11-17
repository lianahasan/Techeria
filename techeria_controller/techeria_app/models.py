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
    mobile_number = models.IntegerField(max_length=10)
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
    mobile_number = models.IntegerField(max_length=10)
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
# #
# class Smartphone(models.Model):
#     name = models.CharField(max_length=50, unique=True)
#     # slug = models.SlugField(max_length=100, unique=True)
#     description = models.TextField(max_length=255, blank=True)
#     price = models.FloatField()
#     image = models.CharField(max_length=100)
#
#     class Meta:
#         verbose_name = 'smartphone'
#         verbose_name_plural = 'smartphones'
#         db_table = 'smartphone'







    def __str__(self):
        return self.techeria_app
