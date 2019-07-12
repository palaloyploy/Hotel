from django.test import TestCase
from django.urls import reverse
# from myapp.forms.AddUserForm import AddUserForm

# Create your tests here.
class IndexViewTest(TestCase):

    # fixtures = ['auth-user.json',]

    def setUp(self):
        print("setUp: Run once for every test method to setup clean data.")
        pass

    def test_view_users_GET_status_is_200(self):
        
        response = self.client.get(reverse('home'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'Hotelapp/Homepage.html')
