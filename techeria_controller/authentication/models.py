
from django.contrib.auth.models import AbstractUser
from django.db import models
from django.db.models.fields import EmailField
# Create your models here.




class BuyerModel(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    user_name = models.CharField(max_length=255)
    date_of_birth = models.DateField()
    email = models.EmailField()
    mobile_number = models.IntegerField()
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
    mobile_number = models.IntegerField()
    address = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    state = models.CharField(max_length=255)
    zip_code = models.CharField(max_length=255)
    country = models.CharField(max_length=20)


    class Meta:
        db_table = "seller"