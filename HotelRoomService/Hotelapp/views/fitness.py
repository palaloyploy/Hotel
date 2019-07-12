from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader

def FitnessViews(request):
    context = {
      
    }
    return render(request, "Hotelapp/Fitness.html", context)