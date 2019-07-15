from django.test import TestCase
from django.urls import reverse

# Create your tests here.
class KaraokeDetailViewTest(TestCase):

    fixtures = ['hotelapp.json',]

    def setUp(self):
        pass

    def test_view_karaokedetail_GET_status_is_200(self):
        
        response = self.client.get(reverse('karaokedetail', kwargs={'karaoke_id':1}))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'Hotelapp/karaokedetail.html')

    # def test_view_boatdetail_GET_list_is_1item(self):
        
    #     response = self.client.get(reverse('boatdetail', kwargs={'boat_id':1}))

    #     self.assertEqual(response.status_code, 200)
    #     self.assertEqual(response.context['boat'].id,1)  

    # def test_view_boatdetail_GET_list_is_1item(self):
        
    #     response = self.client.get(reverse('boatdetail', kwargs={'boat_id':1}))

    #     self.assertEqual(response.status_code, 200)
    #     self.assertEqual(len(response.context['optionboat']),5)