from Hotelapp.model.Boat import Boat
from Hotelapp.model.OptionBoat import OptionBoat
from django.db import models

# Create your models here.

class BoatOption(models.Model):
    name = models.ForeignKey(Boat, null=False,  on_delete=models.CASCADE)
    option = models.ForeignKey(OptionBoat, null=False,  on_delete=models.CASCADE)


    class Meta:
        ordering= ('id',)
        verbose_name ='boatoption'
        verbose_name_plural='boatoptions'

    def __str__(self):
        return '%s' % (self.name)