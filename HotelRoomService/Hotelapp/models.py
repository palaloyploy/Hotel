from django.db import models

# Create your models here.



class Room(models.Model):
    name = models.CharField(max_length=250)
    des = models.CharField(max_length=250)
    option = models.CharField(max_length=250)
    address = models.CharField(max_length=250)
    peple = models.IntegerField(default=1)
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

