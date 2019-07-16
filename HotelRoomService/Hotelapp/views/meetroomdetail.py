from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from Hotelapp.model.models import Meetroom

# Create your views here.
def MeetroomdetailView(request,meetroomlist_id):

    meetroom = Meetroom.objects.get(id=meetroomlist_id)  
    

    return render(request,'Hotelapp/Meetroomdetail.html',{'meetroom':meetroom})