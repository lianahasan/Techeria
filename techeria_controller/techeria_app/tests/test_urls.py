from django.test import SimpleTestCase
from django.urls import reverse, resolve
from techeria_app.views import *

class TestUrls(SimpleTestCase):
    def test_index_url_is_resolved(self):
        url = reverse('index')
        self.assertEquals(resolve(url).func, index)

    def test_about_url_is_resolved(self):
        url = reverse('about')
        self.assertEquals(resolve(url).func, about)

    def test_contact_url_is_resolved(self):
        url = reverse('contact')
        self.assertEquals(resolve(url).func, contact)

    def test_laptop_url_is_resolved(self):
        url = reverse('laptop')
        self.assertEquals(resolve(url).func, laptop)

    def test_smartphone_url_is_resolved(self):
        url = reverse('smartphone')
        self.assertEquals(resolve(url).func, smartphone)

    def test_loginpage_url_is_resolved(self):
        url = reverse('loginpage')
        self.assertEquals(resolve(url).func, loginpage)

    def test_cart_url_is_resolved(self):
        url = reverse('cart')
        self.assertEquals(resolve(url).func, cart)

    def test_checkout_url_is_resolved(self):
        url = reverse('checkout')
        self.assertEquals(resolve(url).func, checkout)

    def test_product_url_is_resolved(self):
        url = reverse('product')
        self.assertEquals(resolve(url).func, product)

    def test_registration_url_is_resolved(self):
        url = reverse('registration')
        self.assertEquals(resolve(url).func, registration)
