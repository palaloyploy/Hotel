from django.test import TestCase
from django.urls import reverse

# Create your tests here.
class BoatViewTest(TestCase):

    fixtures = ['hotelapp.json',]

    def setUp(self):
        pass

    def test_view_boat_GET_status_is_200(self):
        
        response = self.client.get(reverse('boat'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'Hotelapp/Boatpage.html')

    def test_view_boat_GET_list_is_2item(self):
        
        response = self.client.get(reverse('boat'))

        self.assertEqual(response.status_code, 200)
        self.assertEqual(len(response.context['boat']),2) 