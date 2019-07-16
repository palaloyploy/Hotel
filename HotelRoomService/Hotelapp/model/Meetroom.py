from django.db import models

# Create your models here.
class Meetroom(models.Model):
    name = models.CharField(max_length=250)
    des = models.CharField(max_length=1000)
    people = models.IntegerField(default=1)
    price = models.CharField(max_length=250)
    image1 = models.ImageField(upload_to='imageroom', blank=True, null=True)
    image2 = models.ImageField(upload_to='imageroom', blank=True, null=True)
    image3 = models.ImageField(upload_to='imageroom', blank=True, null=True)
    image4 = models.ImageField(upload_to='imageroom', blank=True, null=True)
    image5 = models.ImageField(upload_to='imageroom', blank=True, null=True)


    class Meta:
        ordering= ('id',)
        verbose_name ='meetroom'
        verbose_name_plural='meetrooms'

    def __str__(self):
        return '{}'.format(self.name)

