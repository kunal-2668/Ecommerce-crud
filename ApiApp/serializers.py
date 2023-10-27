from rest_framework import serializers
from .models import *


class Category_Serializer(serializers.ModelSerializer): # initiliazing Serializer for category
    class Meta:
        model = Product_category
        fields = ['category']


class product_Serializer(serializers.ModelSerializer): # initiliazing Serializer for Product
    product_category = Category_Serializer()
    product_img = serializers.ImageField(max_length=None, use_url=True, allow_null=True, required=False)

    class Meta:
        model = Products
        fields = "__all__"


class product_create_Serializer(serializers.Serializer): # initiliazing Serializer for creating products
    product = serializers.CharField(max_length=225)
    product_category = serializers.CharField(max_length=225)
    product_img = serializers.ImageField(max_length=None, use_url=True, allow_null=True, required=False)
    price = serializers.IntegerField()
    description = serializers.CharField()


    def create(self,data): # to create
        product = data['product']
        Product_category.objects.get_or_create(category=data['product_category'])
        product_category = Product_category.objects.get(category=data['product_category'])
        product_img = data['product_img']
        price = data['price']
        description = data['description']

        Products(
            product=product,
            product_category=product_category,
            product_img=product_img,
            price=price,
            description=description
        ).save()
        
        return data
    
    
    def update(self, instance, data): # to update
        try:
            data['product_category']
            Product_category.objects.get_or_create(category=data['product_category'])
            instance.product_category = Product_category.objects.get(category=data['product_category'])
            
        except:
            instance.product_category = data.get('product_category', instance.product_category)

        instance.product = data.get('product', instance.product)
        instance.product_img = data.get('product_img', instance.product_img)
        instance.price = data.get('price', instance.price)
        instance.description = data.get('description', instance.description)

        instance.save()

        return instance