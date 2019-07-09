from django.contrib import admin
from .models import Room 

# Register your models here.
class RoomAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'des','image1','image2','image3','image4','image5']
    list_editable = ['name', 'des','image1','image2','image3','image4','image5']


admin.site.register(Room, RoomAdmin)


