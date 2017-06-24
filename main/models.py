from django.db import models
from ckeditor.fields import RichTextField

class Category(models.Model):
    name = models.CharField(max_length=255)

class Quote(models.Model):
    title = models.CharField(max_length=255)
    content = RichTextField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE)

