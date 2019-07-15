from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from Hotelapp.model.models import Karaoke

# Create your views here.
def KaraokeView(request):
    karaoke = Karaoke.objects.all()
    return render(request, "Hotelapp/karaoke.html", {'karaoke':karaoke})