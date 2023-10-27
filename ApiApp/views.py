from django.shortcuts import get_object_or_404
from .serializers import *
from rest_framework.response import Response
from rest_framework.views import APIView
# Create your views here.

class Product_list(APIView): # To Create and Retrieve all data
    def get(self,request):
        data = Products.objects.all()
        serializer = product_Serializer(data, many=True)
        return Response(serializer.data)
    
    def post(self,request):
        data = request.data
        serializer = product_create_Serializer(data=data)
        if serializer.is_valid():
            serializer.save()
            data = Products.objects.filter(product = serializer.data['product'])[0]
            newserializer = product_Serializer(data)
            return Response(newserializer.data)
        else:
            return Response(serializer.errors)
        

class Product_edit(APIView): # to edit with the help of id

    def get(self,request,id): # To get single Product
        data = get_object_or_404(Products,id=id)
        serializer = product_Serializer(data)
        return Response(serializer.data)
    

    def delete(self,request,id): # to Delete Product
        Products.objects.get(id=id).delete()
        return Response({'message':"Deleted"})
    

    def put(self,request,id):  # To update Product with the help of id
        instance = Products.objects.get(id=id)
        serializer = product_create_Serializer(instance, data = request.data)
        if serializer.is_valid():
            serializer.save()
            data = Products.objects.get(id=id)
            newserializer = product_Serializer(data)
            return Response(newserializer.data)
        else:
            return Response(serializer.errors)
        
        
    def patch(self,request,id):
        instance = Products.objects.get(id=id)
        serializer = product_create_Serializer(instance, data = request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            data = Products.objects.get(id=id)
            newserializer = product_Serializer(data)
            return Response(newserializer.data)
        else:
            return Response(serializer.errors)