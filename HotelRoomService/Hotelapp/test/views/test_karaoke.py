from django.test import TestCase
from django.urls import reverse
# from myapp.forms.AddUserForm import AddUserForm

# Create your tests here.
class RoomViewTest(TestCase):

    fixtures = ['hotelapp.json',]

    def setUp(self):
        # print("setUp: Run once for every test method to setup clean data.")
        pass

    def test_view_karaoke_GET_status_is_200(self):
        
        response = self.client.get(reverse('karaoke'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'Hotelapp/karaoke.html')

    # def test_view_karaoke_GET_list_is_3item(self):
        
    #     response = self.client.get(reverse('room'))

    #     self.assertEqual(response.status_code, 200)
    #     self.assertEqual(len(response.context['room']), 3)     
