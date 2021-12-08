from django.test import SimpleTestCase
from django.urls import reverse, resolve
from techeria_app.views import *

class TestUrls(SimpleTestCase):
    def test_index_url_is_resolved(self):
        url = reverse('index')
        self.assertEqual(resolve(url).func, index)

    def test_about_url_is_resolved(self):
        url = reverse('about')
        self.assertEqual(resolve(url).func, about)

    def test_contact_url_is_resolved(self):
        url = reverse('contact')
        self.assertEqual(resolve(url).func, contact)


    def test_laptop_url_is_resolved(self):
        url = reverse('laptop')
        self.assertEqual(resolve(url).func, laptop)

    def test_smartphone_url_is_resolved(self):
        url = reverse('smartphone')
        self.assertEqual(resolve(url).func, smartphone)
        
    def test_camera_url_is_resolved(self):
        url = reverse('camera')
        self.assertEqual(resolve(url).func, camera)
        
    def test_accessorie_url_is_resolved(self):
        url = reverse('accessorie')
        self.assertEqual(resolve(url).func, accessorie)
        
    def test_loginpage_url_is_resolved(self):
        url = reverse('loginpage')
        self.assertEqual(resolve(url).func, loginpage)

    def test_cart_url_is_resolved(self):
        url = reverse('cart')
        self.assertEqual(resolve(url).func, cart)

    def test_checkout_url_is_resolved(self):
        url = reverse('checkout')
        self.assertEqual(resolve(url).func, checkout)
    
    def test_payments_url_is_resolved(self):
        url = reverse('payments')
        self.assertEqual(resolve(url).func, payments)
        
    def test_registration_url_is_resolved(self):
        url = reverse('registration')
        self.assertEqual(resolve(url).func, registration)    
        
    def test_search_url_is_resolved(self):
        url = reverse('search')
        self.assertEqual(resolve(url).func, search)   
        
    def test_loginpage_url_is_resolved(self):
        url = reverse('loginpage')
        self.assertEqual(resolve(url).func, loginpage)   
        
    def test_ourproducts_url_is_resolved(self):
        url = reverse('ourproducts')
        self.assertEqual(resolve(url).func, ourproducts)   
        
    def test_addproduct_url_is_resolved(self):
        url = reverse('addproduct')
        self.assertEqual(resolve(url).func, addproduct) 
        
    def test_complete_order_url_is_resolved(self):
        url = reverse('complete_order')
        self.assertEqual(resolve(url).func, complete_order)  
           
    def test_notFound_url_is_resolved(self):
        url = reverse('notFound')
        self.assertEqual(resolve(url).func, notFound)      
        
    def test_logout_is_resolved(self):
        url = reverse('logout')
        self.assertEqual(resolve(url).func, logout)  
        
    def test_place_order_is_resolved(self):
        url = reverse('place_order')
        self.assertEqual(resolve(url).func, place_order) 
           
    def test_payments_is_resolved(self):
        url = reverse('payments')
        self.assertEqual(resolve(url).func, payments)   

        
    
    
    
        
