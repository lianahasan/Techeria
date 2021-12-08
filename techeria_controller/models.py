# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Accessorie(models.Model):
    id = models.BigAutoField(primary_key=True)
    image = models.CharField(max_length=100)
    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    category = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'accessorie'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Buyer(models.Model):
    id = models.BigAutoField(primary_key=True)
    first_name = models.CharField(max_length=255, blank=True, null=True)
    last_name = models.CharField(max_length=255, blank=True, null=True)
    user_name = models.CharField(max_length=255, blank=True, null=True)
    date_of_birth = models.DateField(blank=True, null=True)
    email = models.CharField(max_length=254, blank=True, null=True)
    mobile_number = models.IntegerField(blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    city = models.CharField(max_length=255, blank=True, null=True)
    state = models.CharField(max_length=255, blank=True, null=True)
    zip_code = models.CharField(max_length=255, blank=True, null=True)
    country = models.CharField(max_length=20, blank=True, null=True)
    user_id = models.IntegerField(blank=True, null=True)
    device = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'buyer'


class Camera(models.Model):
    id = models.BigAutoField(primary_key=True)
    image = models.CharField(max_length=100)
    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    category = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'camera'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Laptops(models.Model):
    id = models.BigIntegerField()
    image = models.CharField(max_length=100)
    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    category = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'laptops'


class OrderItems(models.Model):
    id = models.BigAutoField(primary_key=True)
    quantity = models.IntegerField()
    date_added = models.DateTimeField()
    order_id = models.IntegerField()
    product_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'order_items'


class Orders(models.Model):
    id = models.BigAutoField(primary_key=True)
    buyer_id = models.BigIntegerField()
    subtotal = models.FloatField()
    order_date = models.DateTimeField()
    complete = models.IntegerField()
    transaction_id = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'orders'


class Payment(models.Model):
    id = models.IntegerField(primary_key=True)
    stripe_id = models.CharField(max_length=100)
    amount = models.FloatField()
    timestamp = models.DateTimeField()
    buyer_id = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'payment'


class Products(models.Model):
    id = models.BigAutoField(primary_key=True)
    image = models.CharField(max_length=100)
    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    category = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'products'


class Seller(models.Model):
    id = models.BigAutoField(primary_key=True)
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    user_name = models.CharField(max_length=255)
    date_of_birth = models.DateField()
    email = models.CharField(max_length=254)
    mobile_number = models.IntegerField()
    address = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    state = models.CharField(max_length=255)
    zip_code = models.CharField(max_length=255)
    country = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'seller'


class Shippingaddress(models.Model):
    id = models.BigIntegerField(primary_key=True)
    address = models.CharField(max_length=200)
    city = models.CharField(max_length=20)
    state = models.CharField(max_length=20)
    zipcode = models.CharField(max_length=20)
    date_added = models.DateTimeField()
    buyer_id = models.BigIntegerField()
    order_id = models.BigIntegerField()

    class Meta:
        managed = False
        db_table = 'shippingaddress'


class Smartphone(models.Model):
    id = models.BigIntegerField()
    image = models.CharField(max_length=100)
    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    category = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'smartphone'


class TecheriaAppOrder(models.Model):
    id = models.BigIntegerField()
    order_number = models.CharField(max_length=20)
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    phone = models.CharField(max_length=15)
    email = models.CharField(max_length=254)
    mobile_number = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    state = models.CharField(max_length=255)
    zip_code = models.CharField(max_length=255)
    country = models.CharField(max_length=20)
    order_note = models.CharField(max_length=100)
    order_total = models.FloatField()
    tax = models.FloatField()
    status = models.CharField(max_length=10)
    ip = models.CharField(max_length=20)
    is_ordered = models.IntegerField()
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    payment_id = models.BigIntegerField(blank=True, null=True)
    user_id = models.BigIntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'techeria_app_order'


class TecheriaAppOrderproduct(models.Model):
    id = models.BigIntegerField()
    quantity = models.IntegerField()
    product_price = models.FloatField()
    ordered = models.IntegerField()
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    order_id = models.BigIntegerField()
    payment_id = models.BigIntegerField(blank=True, null=True)
    product_id = models.BigIntegerField()
    user_id = models.BigIntegerField()

    class Meta:
        managed = False
        db_table = 'techeria_app_orderproduct'


class TecheriaAppPayment(models.Model):
    id = models.BigIntegerField()
    payment_id = models.CharField(max_length=100)
    payment_method = models.CharField(max_length=100)
    amount_paid = models.CharField(max_length=100)
    status = models.CharField(max_length=100)
    created_at = models.DateTimeField()
    user_id = models.BigIntegerField()

    class Meta:
        managed = False
        db_table = 'techeria_app_payment'


class Trending(models.Model):
    id = models.BigAutoField(primary_key=True)
    image = models.CharField(max_length=100)
    name = models.CharField(max_length=255)
    price = models.FloatField()
    description = models.TextField()
    category = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'trending'
