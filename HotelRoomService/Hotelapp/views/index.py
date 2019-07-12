from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader

def IndexView(request):
    
   
    context = {
      
    }
    return render(request, "Hotelapp/Homepage.html", context)