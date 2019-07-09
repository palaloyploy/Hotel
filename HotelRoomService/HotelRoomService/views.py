from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader



# Create your views here.
def index(request):
    
    template = loader.get_template('Homepage.html')
    context = {
      
    }
    return HttpResponse(template.render(context, request))
def room(request):
    return render(request,'Roompage.html')
def roomdetail(request):
    return render(request,'Roomdetail.html')
def fitness(request):
    return render(request,'Fitness.html')
def spa(request):
    return render(request,'spa.html')
def waterpark(request):
    return render(request,'Waterpark.html')