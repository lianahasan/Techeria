from django.test import TestCase
from django.test import SimpleTestCase
from django.urls import reverse, resolve
from techeria_app.models import Products, BuyerModel,SellerModel,Laptops,Smartphone,Cameras,Accessories,Order, OrderItem,Payment,ShippingAddress,CompleteOrder
from django.test import Client
from django.contrib.auth.models import User
from django.utils import timezone
import datetime
    
time = datetime.datetime.now(tz=timezone.utc)

class Test_CompleteOrder(TestCase):
    @classmethod
    def setUpTestData(cls):
        CompleteOrder.objects.create(
            first_name='Alice',
            last_name = 'Bob',
            email = '123@gmail.com',
            mobile_number = '1234521234',
            address = '154-54 37th ave bown',
            city    = 'new york',
            state = 'ny',
            zip_code = '11254',
            country = 'USA',
            price = '999',
            item = 123
        )
        
    def test_CompleteOrder_first_name_label(self):
        comporder = CompleteOrder.objects.get(email = '123@gmail.com')
        field_label = comporder._meta.get_field('first_name').verbose_name
        self.assertEqual(field_label, 'first name')
        
    def test_CompleteOrder_last_name_label(self):
        comporder = CompleteOrder.objects.get(email = '123@gmail.com')
        field_label = comporder._meta.get_field('last_name').verbose_name
        self.assertEqual(field_label, 'last name')
        
        
    def test_CompleteOrder_email_label(self):
        comporder = CompleteOrder.objects.get(email = '123@gmail.com')
        field_label = comporder._meta.get_field('email').verbose_name
        self.assertEqual(field_label, 'email')
        
    def test_CompleteOrder_mobile_number_label(self):
        comporder = CompleteOrder.objects.get(email = '123@gmail.com')
        field_label = comporder._meta.get_field('mobile_number').verbose_name
        self.assertEqual(field_label, 'mobile number')
        
    def test_CompleteOrder_address_label(self):
        comporder= CompleteOrder.objects.get(email = '123@gmail.com')
        field_label = comporder._meta.get_field('address').verbose_name
        self.assertEqual(field_label, 'address')
        
    def test_CompleteOrder_city_label(self):
        comporder = CompleteOrder.objects.get(email = '123@gmail.com')
        field_label = comporder._meta.get_field('city').verbose_name
        self.assertEqual(field_label, 'city')
        
    def test_CompleteOrder_state_label(self):
        comporder = CompleteOrder.objects.get(email = '123@gmail.com')
        field_label = comporder._meta.get_field('state').verbose_name
        self.assertEqual(field_label, 'state')
        
    def test_zip_code_label(self):
        comporder = CompleteOrder.objects.get(email = '123@gmail.com')
        field_label = comporder._meta.get_field('zip_code').verbose_name
        self.assertEqual(field_label, 'zip code')
        
    def test_country_label(self):
        comporder = CompleteOrder.objects.get(email = '123@gmail.com')
        field_label = comporder._meta.get_field('country').verbose_name
        self.assertEqual(field_label, 'country')
        
    def test_country_label(self):
        comporder = CompleteOrder.objects.get(email = '123@gmail.com')
        field_label = comporder._meta.get_field('price').verbose_name
        self.assertEqual(field_label, 'price')
        
    def test_country_label(self):
        comporder = CompleteOrder.objects.get(email = '123@gmail.com')
        field_label = comporder._meta.get_field('item').verbose_name
        self.assertEqual(field_label, 'item')
        

class Test_ShippingAddress(TestCase):
    @classmethod
    def setUpTestData(cls):
        ShippingAddress.objects.create(
            buyer = BuyerModel.objects.create(user_name = 'ab123'),
            address = '154-54 37th ave bown',
            city    = 'new york',
            state = 'ny',
            zipcode = '11254',
            date_added = time
            )
        
    def test_shippingaddress_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        shipadd = ShippingAddress.objects.get(buyer=buyer)
        field_label = shipadd._meta.get_field('address').verbose_name
        self.assertEqual(field_label, 'address')
        
    def test_shippingcity_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        shipadd = ShippingAddress.objects.get(buyer=buyer)
        field_label = buyer._meta.get_field('city').verbose_name
        self.assertEqual(field_label, 'city')
        
    def test_shipping_state_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        shipadd = ShippingAddress.objects.get(buyer=buyer)
        field_label = shipadd._meta.get_field('state').verbose_name
        self.assertEqual(field_label, 'state')
        
    def test_shipping_zipcode_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        shipadd = ShippingAddress.objects.get(buyer=buyer)
        field_label = shipadd._meta.get_field('zipcode').verbose_name
        self.assertEqual(field_label, 'zipcode')


class Test_Payment(TestCase):
    @classmethod
    def setUpTestData(cls):
        Payment.objects.create(
            payment_id = '123',
            payment_method ='Paypal',
            amount_paid = '999',
            status = '1',
            created_at = time
        )
            
    def test_payment_id_label(self):
        payment = Payment.objects.get(payment_id = '123')
        field_label = payment._meta.get_field('payment_id').verbose_name
        self.assertEqual(field_label, 'payment id')
        
    def test_payment_method_label(self):
        payment = Payment.objects.get(payment_id = '123')
        field_label = payment._meta.get_field('payment_method').verbose_name
        self.assertEqual(field_label, 'payment method')
        
    def test_amount_paid_label(self):
        payment = Payment.objects.get(payment_id = '123')
        field_label = payment._meta.get_field('amount_paid').verbose_name
        self.assertEqual(field_label, 'amount paid')
        
    def test_status_label(self):
        payment = Payment.objects.get(payment_id = '123')
        field_label = payment._meta.get_field('status').verbose_name
        self.assertEqual(field_label, 'status')


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


class Test_Laptop(TestCase):
    @classmethod
    def setUpTestData(cls):
        Laptops.objects.create(
        name='HP Laptop, 17.3',
        price='899',
        description='11th Gen Intel Core i5-1135G7 Quad-Core Processor, 16GB DDR4 Memory',
        category='laptop')
        
    def test_laptop_name_label(self):
        laptop = Laptops.objects.get(name='HP Laptop, 17.3')
        field_label = laptop._meta.get_field('name').verbose_name
        self.assertEqual(field_label, 'name')
        
    def test_laptop_price_label(self):
        laptop = Laptops.objects.get( price='899')
        field_label = laptop._meta.get_field('price').verbose_name
        self.assertEqual(field_label, 'price')
     
    def test_laptop_description_label(self):
        laptop = Laptops.objects.get(description='11th Gen Intel Core i5-1135G7 Quad-Core Processor, 16GB DDR4 Memory')
        field_label = laptop._meta.get_field('description').verbose_name
        self.assertEqual(field_label, 'description')    
        
    def test_laptop_category_label(self):
        laptop = Laptops.objects.get( category='laptop')
        field_label = laptop._meta.get_field('category').verbose_name
        self.assertEqual(field_label, 'category')

class Test_Smartphone(TestCase):
    @classmethod
    def setUpTestData(cls):
        Smartphone.objects.create(
        name='iPhone 13 Pro 256gb Silver',
        price='1099',
        description='Newest iphone in 2021',
        category='smartphone')
        
    def test_Smartphone_name_label(self):
        smartphone = Smartphone.objects.get(name='iPhone 13 Pro 256gb Silver')
        field_label = Smartphone._meta.get_field('name').verbose_name
        self.assertEqual(field_label, 'name')
        
    def test_Smartphone_price_label(self):
        smartphone = Smartphone.objects.get( price='1099')
        field_label = Smartphone._meta.get_field('price').verbose_name
        self.assertEqual(field_label, 'price')
     
    def test_Smartphone_description_label(self):
        smartphone = Smartphone.objects.get(description='Newest iphone in 2021')
        field_label = Smartphone._meta.get_field('description').verbose_name
        self.assertEqual(field_label, 'description')    
        
    def test_Smartphone_category_label(self):
        smartphone = Smartphone.objects.get( category='smartphone')
        field_label = Smartphone._meta.get_field('category').verbose_name
        self.assertEqual(field_label, 'category')

class Test_Cameras(TestCase):
    @classmethod
    def setUpTestData(cls):
        Cameras.objects.create(
        name='Canon - EOS Rebel T7 DSLR Video Camera',
        price='499',
        description='18-55mm Lens - Black',
        category='cameras')
        
    def test_Camera_name_label(self):
        camera = Cameras.objects.get(name='Canon - EOS Rebel T7 DSLR Video Camera')
        field_label = Cameras._meta.get_field('name').verbose_name
        self.assertEqual(field_label, 'name')
        
    def test_Camera_price_label(self):
        camera = Cameras.objects.get( price='499')
        field_label = Cameras._meta.get_field('price').verbose_name
        self.assertEqual(field_label, 'price')
     
    def test_Camera_description_label(self):
        camera = Cameras.objects.get(description='18-55mm Lens - Black')
        field_label = Cameras._meta.get_field('description').verbose_name
        self.assertEqual(field_label, 'description')    
        
    def test_Camera_category_label(self):
        camera = Cameras.objects.get( category='cameras')
        field_label = Cameras._meta.get_field('category').verbose_name
        self.assertEqual(field_label, 'category')
        
class Test_Accessories(TestCase):
    @classmethod
    def setUpTestData(cls):
        Accessories.objects.create(
        name='Bose - QuietComfort',
        price='199',
        description='True Wireless Noise Cancelling In-Ear Headphones - Sandstone',
        category='accessories')
        
    def test_Camera_name_label(self):
        accessorie = Accessories.objects.get(name='Bose - QuietComfort')
        field_label = Accessories._meta.get_field('name').verbose_name
        self.assertEqual(field_label, 'name')
        
    def test_Camera_price_label(self):
        accessorie = Accessories.objects.get( price='199')
        field_label = Accessories._meta.get_field('price').verbose_name
        self.assertEqual(field_label, 'price')
     
    def test_Camera_description_label(self):
        accessorie = Accessories.objects.get(description='True Wireless Noise Cancelling In-Ear Headphones - Sandstone')
        field_label = Accessories._meta.get_field('description').verbose_name
        self.assertEqual(field_label, 'description')    
        
    def test_Camera_category_label(self):
        accessorie = Accessories.objects.get( category='accessories')
        field_label = Accessories._meta.get_field('category').verbose_name
        self.assertEqual(field_label, 'category')
        
class Test_Buyer(TestCase):
    @classmethod
    def setUpTestData(cls):
        BuyerModel.objects.create(
        first_name='Alice',
        last_name = 'Bob',
        user_name = 'ab123',
        date_of_birth = '2000-02-01',
        email = '123@gmail.com',
        mobile_number = '1234521234',
        address = '154-54 37th ave bown',
        city    = 'new york',
        state = 'ny',
        zip_code = '11254',
        country = 'USA')

    def test_Buyer_first_name_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        field_label = buyer._meta.get_field('first_name').verbose_name
        self.assertEqual(field_label, 'first name')
        
    def test_Buyer_last_name_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        field_label = buyer._meta.get_field('last_name').verbose_name
        self.assertEqual(field_label, 'last name')
        
    def test_Buyer_user_name_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        field_label = buyer._meta.get_field('user_name').verbose_name
        self.assertEqual(field_label, 'user name')
        
    def test_Buyer_dob_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        field_label = buyer._meta.get_field('date_of_birth').verbose_name
        self.assertEqual(field_label, 'date of birth')
        
    def test_Buyer_email_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        field_label = buyer._meta.get_field('email').verbose_name
        self.assertEqual(field_label, 'email')
        
    def test_Buyer_mobile_number_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        field_label = buyer._meta.get_field('mobile_number').verbose_name
        self.assertEqual(field_label, 'mobile number')
        
    def test_Buyer_address_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        field_label = buyer._meta.get_field('address').verbose_name
        self.assertEqual(field_label, 'address')
        
    def test_Buyer_city_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        field_label = buyer._meta.get_field('city').verbose_name
        self.assertEqual(field_label, 'city')
        
    def test_Buyer_state_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        field_label = buyer._meta.get_field('state').verbose_name
        self.assertEqual(field_label, 'state')
        
    def test_zip_code_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        field_label = buyer._meta.get_field('zip_code').verbose_name
        self.assertEqual(field_label, 'zip code')
        
    def test_country_label(self):
        buyer = BuyerModel.objects.get(user_name = 'ab123')
        field_label = buyer._meta.get_field('country').verbose_name
        self.assertEqual(field_label, 'country')


class Test_Seller(TestCase):
    @classmethod
    def setUpTestData(cls):
        SellerModel.objects.create(
        first_name='Bice',
        last_name = 'Aob',
        user_name = 'jd123',
        date_of_birth = '2010-02-01',
        email = '234@gmail.com',
        mobile_number = '124221234',
        address = '123-42 37th ave bown',
        city    = 'new york',
        state = 'ny',
        zip_code = '11233',
        country = 'USA')
        
    def test_seller_first_name_label(self):
        seller = SellerModel.objects.get( user_name = 'jd123')
        field_label = seller._meta.get_field('first_name').verbose_name
        self.assertEqual(field_label, 'first name')
        
    def test_seller_last_name_label(self):
        seller = SellerModel.objects.get( user_name = 'jd123')
        field_label = seller._meta.get_field('last_name').verbose_name
        self.assertEqual(field_label, 'last name')
        
    def test_seller_user_name_label(self):
        seller = SellerModel.objects.get( user_name = 'jd123')
        field_label = seller._meta.get_field('user_name').verbose_name
        self.assertEqual(field_label, 'user name')

    def test_seller_dob_label(self):
        seller = SellerModel.objects.get(user_name = 'jd123')
        field_label =  seller._meta.get_field('date_of_birth').verbose_name
        self.assertEqual(field_label, 'date of birth')
        
    def test_seller_seller_email_label(self):
        seller = SellerModel.objects.get(user_name = 'jd123')
        field_label = seller._meta.get_field('email').verbose_name
        self.assertEqual(field_label, 'email')
        
    def test_seller_mobile_number_label(self):
        seller = SellerModel.objects.get(user_name = 'jd123')
        field_label = seller._meta.get_field('mobile_number').verbose_name
        self.assertEqual(field_label, 'mobile number')
        
    def test_seller_address_label(self):
        seller = SellerModel.objects.get( user_name = 'jd123')
        field_label = seller._meta.get_field('address').verbose_name
        self.assertEqual(field_label, 'address')
        
    def test_seller_city_label(self):
        seller = SellerModel.objects.get(user_name = 'jd123')
        field_label = seller._meta.get_field('city').verbose_name
        self.assertEqual(field_label, 'city')
        
    def test_seller_state_label(self):
        seller = SellerModel.objects.get(user_name = 'jd123')
        field_label = seller._meta.get_field('state').verbose_name
        self.assertEqual(field_label, 'state')
        
    def test_seller_zip_code_label(self):
        seller = SellerModel.objects.get(user_name = 'jd123')
        field_label = seller._meta.get_field('zip_code').verbose_name
        self.assertEqual(field_label, 'zip code')
        
    def test_seller_country_label(self):
        seller = SellerModel.objects.get(user_name = 'jd123')
        field_label = seller._meta.get_field('country').verbose_name
        self.assertEqual(field_label, 'country')
        
        
        
