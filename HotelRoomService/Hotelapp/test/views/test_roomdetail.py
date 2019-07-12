from django.test import TestCase
from django.urls import reverse
# from myapp.forms.AddUserForm import AddUserForm

# Create your tests here.
class RoomViewTest(TestCase):

    fixtures = ['hotelapp.json',]

    def setUp(self):
        pass

    def test_view_roomdetail_GET_status_is_200(self):
        
        response = self.client.get(reverse('roomdetail', kwargs={'room_id':3}))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'Hotelapp/Roomdetail.html')

    # def test_view_room_GET_list_is_3item(self):
        
    #     response = self.client.get(reverse('room'))

    #     self.assertEqual(response.status_code, 200)
    #     self.assertEqual(len(response.context['room_list']), 3)     
