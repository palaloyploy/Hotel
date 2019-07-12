from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader

def SpaViews(request):
    context = {
      
    }
    return render(request, "Hotelapp/spa.html", context)