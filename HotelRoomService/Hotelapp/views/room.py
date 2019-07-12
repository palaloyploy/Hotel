from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from Hotelapp.models import Room , Option


# Create your views here.
def RoomView(request):

    room = Room.objects.all()
    
    return render(request,'Hotelapp/Roompage.html',{'room':room})