from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from Hotelapp.models import Room , Option

# Create your views here.
def RoomdetailView(request,room_id):
    room = Room.objects.get(id=room_id)  
    option = Option.objects.all()
    return render(request,'Hotelapp/Roomdetail.html',{'room':room,'option':option})