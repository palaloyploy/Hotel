"""HotelRoomService URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import path
from HotelRoomService import views
from django.conf import settings
from django.conf.urls.static import static
from Hotelapp.views.index import IndexView
from Hotelapp.views.room import RoomView
from Hotelapp.views.fitness import FitnessViews
from Hotelapp.views.spa import SpaViews
from Hotelapp.views.waterpark import WaterparkView
from Hotelapp.views.roomdetail import RoomdetailView

from Hotelapp.views.meetroom import MeetroomView

urlpatterns = [
    path('', IndexView, name='home'),
    path('room/',RoomView, name = 'room'),
    path('<room_id>/detail/',RoomdetailView, name = 'roomdetail'),

    path('fitness/',FitnessViews, name = 'fitness'),
    path('spa/',SpaViews, name = 'spa'),
    path('waterpark/',WaterparkView, name = 'waterpark'),
    path('admin/', admin.site.urls),

    path('meetroom/',MeetroomView, name = 'meetroom'),
]
urlpatterns += static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)