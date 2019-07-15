from django.contrib import admin
from Hotelapp.model.models import (
    Room, 
    Option, 
    RoomOption, 
    Boat,
    OptionBoat,
    BoatOption,
    Karaoke,
    )

# Register your models here.
class RoomAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'des','price','image1','image2','image3','image4','image5']
    list_editable = ['name', 'des','price','image1','image2','image3','image4','image5']


admin.site.register(Room, RoomAdmin)

class OptionAdmin(admin.ModelAdmin):
    list_display = ['id', 'optionname']
    list_editable = [ 'optionname']


admin.site.register(Option, OptionAdmin)



class RoomOptionAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'option']
    list_editable = ['name', 'option']


admin.site.register(RoomOption, RoomOptionAdmin)

class BoatAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'des','pricehalf','pricefull','peoplefull','peoplepromotion','image1','image2','image3','image4','image5']
    list_editable = ['name', 'des','pricehalf','pricefull','peoplefull','peoplepromotion','image1','image2','image3','image4','image5']

admin.site.register(Boat,BoatAdmin)

class OptionBoatAdmin(admin.ModelAdmin):
    list_display = ['id', 'optionname']
    list_editable = [ 'optionname']


admin.site.register(OptionBoat, OptionBoatAdmin)

class BoatOptionAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'option']
    list_editable = ['name', 'option']


admin.site.register(BoatOption, BoatOptionAdmin)

class KaraokeAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'des','price','image1','image2','image3','image4','image5']
    list_editable = ['name', 'des','price','image1','image2','image3','image4','image5']


admin.site.register(Karaoke, KaraokeAdmin)


