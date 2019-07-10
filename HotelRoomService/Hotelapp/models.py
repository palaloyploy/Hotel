from django.db import models

# Create your models here.



class Room(models.Model):
    name = models.CharField(max_length=250)
    des = models.CharField(max_length=1000)
    peple = models.IntegerField(default=1)
    price = models.CharField(max_length=250)
    image1 = models.ImageField(upload_to='imageroom', blank=True, null=True)
    image2 = models.ImageField(upload_to='imageroom', blank=True, null=True)
    image3 = models.ImageField(upload_to='imageroom', blank=True, null=True)
    image4 = models.ImageField(upload_to='imageroom', blank=True, null=True)
    image5 = models.ImageField(upload_to='imageroom', blank=True, null=True)


    class Meta:
        ordering= ('id',)
        verbose_name ='room'
        verbose_name_plural='rooms'

    def __str__(self):
        return '{}'.format(self.name)


class Option(models.Model):
    optionname = models.CharField(max_length=250)


    class Meta:
        ordering= ('id',)
        verbose_name ='option'
        verbose_name_plural='options'

    def __str__(self):
        return '%s' % (self.optionname)

class RoomOption(models.Model):
    name = models.ForeignKey(Room, null=False,  on_delete=models.CASCADE)
    option = models.ForeignKey(Option, null=False,  on_delete=models.CASCADE)


    class Meta:
        ordering= ('id',)
        verbose_name ='roomoption'
        verbose_name_plural='roomoptions'

    def __str__(self):
        return '%s' % (self.name)