from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from Hotelapp.model.models import Meetroom



# Create your views here.
def MeetroomView(request):
    meetroomlist = Meetroom.objects.all()

    return render(request,'Hotelapp/Meetroom.html',{'meetroomlist':meetroomlist})