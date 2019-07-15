from django.db import models

# Create your models here.
class Karaoke(models.Model):
    name = models.CharField(max_length=250)
    des = models.CharField(max_length=1000)
    price = models.CharField(max_length=250)
    image1 = models.ImageField(upload_to='karaokeimage', blank=True, null=True)
    image2 = models.ImageField(upload_to='karaokeimage', blank=True, null=True)
    image3 = models.ImageField(upload_to='karaokeimage', blank=True, null=True)
    image4 = models.ImageField(upload_to='karaokeimage', blank=True, null=True)
    image5 = models.ImageField(upload_to='karaokeimage', blank=True, null=True)


    class Meta:
        ordering= ('id',)
        verbose_name ='karaoke'
        verbose_name_plural='karaokes'

    def __str__(self):
        return '{}'.format(self.name)

