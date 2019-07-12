from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader


def WaterparkView(request):
    context = {
      
    }
    return render(request,'Hotelapp/Waterpark.html',context)