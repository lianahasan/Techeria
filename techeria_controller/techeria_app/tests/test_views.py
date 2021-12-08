from django.test import TestCase, Client
from django.urls import reverse
from techeria_app.models import *

#https://adamj.eu/tech/2019/04/30/getting-a-django-application-to-100-percent-coverage/
import json

# class productInfoTests(TestCase): # Needs to be fixed?
#     def test_product_info_status_code(self):
#         response = self.client.get('/p/')
#         self.assertEquals(response.status_code, 200)
