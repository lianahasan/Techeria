from django.test import TestCase
from django.test import SimpleTestCase
from django.urls import reverse, resolve
from techeria_app.models import Products, BuyerModel,SellerModel,Laptops,Smartphone,Cameras,Accessories,Order, OrderItem,Payment,ShippingAddress,CompleteOrder
from django.test import Client
from django.contrib.auth.models import User
from django.utils import timezone
import datetime
    
time = datetime.datetime.now(tz=timezone.utc)

class Test_Order_Items(TestCase):
    @classmethod
    def setUpTestData(cls):
        OrderItem.objects.create(
            quantity = 1,
            date_added = time,
            product = Products.objects.create(
                id = 1,
                name = 'HP Laptop, 17.3" FHD',
                price = '899',
                description = 'Memory is 16GB high-bandwidth',
                category = 'laptop'),
            
            order = Order.objects.create(
                    id = 2,
                    order_date = time,
                    complete = False,
                    transaction_id = None)
        )      
        
    def test_product_name_label(self):
        product = Products.objects.get(name='HP Laptop, 17.3" FHD')
        field_label = product._meta.get_field('name').verbose_name
        self.assertEqual(field_label, 'name')
        
    def test_complete_label(self):
        order = Order.objects.get(complete = False)
        field_label = order._meta.get_field('complete').verbose_name
        self.assertEqual(field_label, 'complete')
    
    def test_quantity_label(self):
        orderitem = OrderItem.objects.get(quantity = 1)
        field_label = orderitem._meta.get_field('quantity').verbose_name
        self.assertEqual(field_label, 'quantity')


class Test_Order(TestCase):
    @classmethod

    def setUpTestData(cls):
        Order.objects.create(
            order_date = time,
            complete = False,
            transaction_id = None
        )
        
    def test_complete_label(self):
        order = Order.objects.get(complete = False)
        field_label = order._meta.get_field('complete').verbose_name
        self.assertEqual(field_label, 'complete')
        
        