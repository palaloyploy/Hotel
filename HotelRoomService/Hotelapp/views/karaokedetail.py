from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from Hotelapp.model.models import Karaoke


def KaraokedetailView(request,karaoke_id):
    karaoke = Karaoke.objects.get(id=karaoke_id)  
    return render(request, "Hotelapp/karaokedetail.html", {'karaoke':karaoke})