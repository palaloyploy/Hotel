from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from Hotelapp.model.models import Boat


# Create your views here.
def BoatView(request):

    boat = Boat.objects.all()

    return render(request,'Hotelapp/Boatpage.html',{'boat':boat})