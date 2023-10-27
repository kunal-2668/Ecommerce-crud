from django.db import models
from django.contrib.auth.models import User
from autoslug import AutoSlugField

# Create your models here.


# Time Stamp model contains created at and updated at

class TimeStamp(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        abstract = True


# Product category model 

class Product_category(TimeStamp):
    category = models.CharField(max_length=200) # Category Name *required
    category_image = models.ImageField(upload_to='images/category_images',blank=True,null=True) # Category Name *optional
    category_slug = AutoSlugField(populate_from='category',unique=True) # created a slug


    def __str__(self): # return category name insted of Product_category(object 1)
        return self.category
    
    class Meta: # for ordering according to creation time
        ordering = ['-created_at']


# Product model contains all the properties of a product including product image

class Products(TimeStamp):
    product = models.CharField(max_length=225)
    product_category = models.ForeignKey(Product_category,on_delete=models.SET_NULL,blank=True, null=True, related_name='products')
    product_img = models.ImageField(upload_to='images/products',blank=True,null=True)
    price = models.PositiveBigIntegerField()
    description = models.TextField()
    saved_by = models.ManyToManyField(User,related_name='Saved',blank=True,null=True)
    product_slug = AutoSlugField(populate_from='product',unique=True) # created a slug

    def __str__(self): # return category name insted of Products(object 1)
        return self.product
    
    class Meta: # for ordering according to creation time
        ordering = ['-created_at']