from Hotelapp.model.Room import Room
from Hotelapp.model.Option import Option
from django.db import models

# Create your models here.

class RoomOption(models.Model):
    name = models.ForeignKey(Room, null=False,  on_delete=models.CASCADE)
    option = models.ForeignKey(Option, null=False,  on_delete=models.CASCADE)


    class Meta:
        ordering= ('id',)
        verbose_name ='roomoption'
        verbose_name_plural='roomoptions'

    def __str__(self):
        return '%s' % (self.name)