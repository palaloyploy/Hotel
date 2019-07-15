from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from Hotelapp.model.models import Boat , OptionBoat

# Create your views here.
def BoatdetailView(request,boat_id):
    boat = Boat.objects.get(id=boat_id)  
    optionboat = OptionBoat.objects.all()
    return render(request,'Hotelapp/Boatdetail.html',{'boat':boat,'optionboat':optionboat})