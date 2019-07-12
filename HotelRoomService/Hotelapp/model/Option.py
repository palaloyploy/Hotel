from django.db import models

# Create your models here.

class Option(models.Model):
    optionname = models.CharField(max_length=250)


    class Meta:
        ordering= ('id',)
        verbose_name ='option'
        verbose_name_plural='options'

    def __str__(self):
        return '%s' % (self.optionname)
