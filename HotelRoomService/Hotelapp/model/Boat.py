from django.db import models


# Create your models here.
class Boat(models.Model):
    name = models.CharField(max_length=250)
    des = models.CharField(max_length=1000)
    peoplefull = models.IntegerField(default=1)
    peoplepromotion = models.IntegerField(default=1)
    pricehalf = models.CharField(max_length=250)
    pricefull = models.CharField(max_length=250)
    image1 = models.ImageField(upload_to='imageboat', blank=True, null=True)
    image2 = models.ImageField(upload_to='imageboat', blank=True, null=True)
    image3 = models.ImageField(upload_to='imageboat', blank=True, null=True)
    image4 = models.ImageField(upload_to='imageboat', blank=True, null=True)
    image5 = models.ImageField(upload_to='imageboat', blank=True, null=True)

    class Meta:
        ordering= ('id',)
        verbose_name ='boat'
        verbose_name_plural='boats'

    def __str__(self):
        return '{}'.format(self.name)