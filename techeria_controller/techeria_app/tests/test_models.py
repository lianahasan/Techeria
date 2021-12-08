from django.test import TestCase
from django.test import SimpleTestCase
from django.urls import reverse, resolve
from techeria_app.models import *


class Test_Product(TestCase):
    @classmethod
    def setUpTestData(cls):
        Products.objects.create(
        name = 'HP Laptop, 17.3" FHD',
        price = '899',
        description = 'Memory is 16GB high-bandwidth',
        category = 'laptop')

    def test_product_name_label(self):
        product = Products.objects.get(name='HP Laptop, 17.3" FHD')
        field_label = product._meta.get_field('name').verbose_name
        self.assertEqual(field_label, 'name')
        
<<<<<<< HEAD
    def test_product_price_label(self):
        product = Products.objects.get(price = '899')
        field_label = product._meta.get_field('price').verbose_name
        self.assertEqual(field_label, 'price')
        
    def test_product_description_label(self):
        product = Products.objects.get(description = 'Memory is 16GB high-bandwidth')
        field_label = product._meta.get_field('description').verbose_name
        self.assertEqual(field_label, 'description')
        
    def test_product_category_label(self):
        product = Products.objects.get(category = 'laptop')
        field_label = product._meta.get_field('category').verbose_name
        self.assertEqual(field_label, 'category')      


class Test_laptop(TestCase):

    def test_fileds(self):

        def setUp(self):
             self.laptop = Laptops.object.create(
                name="HP Laptop, 17.3",
                price="899",
                description="11th Gen Intel Core i5-1135G7 Quad-Core Processor, 16GB DDR4 Memory",
                category="laptop")

        def test_laptop_is_assigned_slug_on_creation(self):
            self.assertEqual(self.laptop.slug,'laptop')


class Test_smartphone(TestCase):

    def test_fileds(self):

        def setUp(self):
             self.smartphone = Smartphone.object.create(
                name="Samsung - Galaxy S21",
                price="1299.99",
                description="Galaxy S21 Ultra 5G for verizon is crafted",
                category="smartphone")

        def test_smartphone_is_assigned_slug_on_creation(self):
            self.assertEqual(self.smartphone.slug,'smartphone')



class Test_camera(TestCase):

    def test_fileds(self):

        def setUp(self):
             self.camera = Cameras.object.create(
                name="Canon - EOS Rebel",
                price="479.99",
                description="Take professional-looking photos with",
                category="cameras")

        def test_camera_is_assigned_slug_on_creation(self):
            self.assertEqual(self.smartphone.slug,'camera')



class Test_buyer(TestCase):
    def test_fileds(self):

        def setUp(self):
             self.buyer = BuyerModel.object.create(
                first_name = "Bruce",
                last_name = "Wayne",
                user_name = "batman",
                date_of_birth = "07/19/1995",
                email = "batman001@gmail.com",
                mobile_number ="7188888888",
                address = "1007 Mountain Drive",
                city = "Gotham",
                state = "NY",
                zip_code = "11512",
                country = "USA")

        def test_product_is_assigned_slug_on_creation(self):
            self.assertEqual(self.buyer.slug,'buyer')

class Test_seller(TestCase):
    def test_fileds(self):

        def setUp(self):
             self.seller = SellerModel.object.create(
                first_name = "Bruce",
                last_name = "Wayne",
                user_name = "batman",
                date_of_birth = "07/19/1995",
                email = "batman001@gmail.com",
                mobile_number ="7188888888",
                address = "1007 Mountain Drive",
                city = "Gotham",
                state = "NY",
                zip_code = "11512",
                country = "USA")

        def test_product_is_assigned_slug_on_creation(self):
            self.assertEqual(self.seller.slug,'seller')
=======
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
>>>>>>> origin/main
