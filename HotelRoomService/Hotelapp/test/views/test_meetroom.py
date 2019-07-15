from django.test import TestCase
from django.urls import reverse

# Create your tests here.
class MeetroomViewTest(TestCase):

    # fixtures = ['hotelapp.json',]

    def setUp(self):
        pass

    def test_view_meetroom_GET_status_is_200(self):
        
        response = self.client.get(reverse('meetroom'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'Hotelapp/Meetroompage.html')

    # def test_view_room_GET_list_is_3item(self):
        
    #     response = self.client.get(reverse('room'))

    #     self.assertEqual(response.status_code, 200)
    #     self.assertEqual(len(response.context['room']), 3)     
