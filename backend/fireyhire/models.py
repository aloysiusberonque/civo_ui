from django.db import models
# from django.contrib.auth.models import AbstractUser

# Create your models here.
class Resume(models.Model):
    name = models.CharField(max_length = 255, null = False, blank = False)
    organization = models.CharField(max_length = 255, null = False, blank = False)
    details = models.TextField(null = False, blank = False)

