from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from Hotelapp.models import Room 


# Create your views here.
def index(request):
    
    template = loader.get_template('Homepage.html')
    context = {
      
    }
    return HttpResponse(template.render(context, request))
def room(request):

    room = Room.objects.all()
    
    return render(request,'Roompage.html',{'room':room})
def roomdetail(request,room_id):
    room = Room.objects.get(id=room_id)  

    return render(request,'Roomdetail.html',{'room':room})
def fitness(request):
    return render(request,'Fitness.html')
def spa(request):
    return render(request,'spa.html')
def waterpark(request):
    return render(request,'Waterpark.html')