from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
# from Hotelapp.model.models import Room , Option

# Create your views here.
def MeetroomdetailView(request):

    return render(request,'Hotelapp/Meetroomdetail.html')