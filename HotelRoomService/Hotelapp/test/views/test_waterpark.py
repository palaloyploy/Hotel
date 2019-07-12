from django.test import TestCase
from django.urls import reverse
# from myapp.forms.AddUserForm import AddUserForm

# Create your tests here.
class ParkViewTest(TestCase):


    def setUp(self):
        print("setUp: Run once for every test method to setup clean data.")
        pass

    def test_view_room_GET_status_is_200(self):
        
        response = self.client.get(reverse('waterpark'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'Hotelapp/Waterpark.html')