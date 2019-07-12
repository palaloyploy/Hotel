from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader

from Hotelapp.model.models import Room , Option , RoomOption
# Create your views here.
def room(request):

    room = Room.objects.all()
    
    return render(request,'Roompage.html',{'room':room})

# Create your views here.
def roomdetail(request,room_id):
    room = Room.objects.get(id=room_id)  
    option = Option.objects.all()
    

    return render(request,'Roomdetail.html',{'room':room,'option':option})
def fitness(request):
    return render(request,'Fitness.html')
def spa(request):
    return render(request,'spa.html')
def waterpark(request):
    return render(request,'Waterpark.html')