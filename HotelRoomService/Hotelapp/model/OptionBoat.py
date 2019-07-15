from django.db import models

# Create your models here.

class OptionBoat(models.Model):
    optionname = models.CharField(max_length=250)


    class Meta:
        ordering= ('id',)
        verbose_name ='optionboat'
        verbose_name_plural='optionboats'

    def __str__(self):
        return '%s' % (self.optionname)