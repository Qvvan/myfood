# your_project/api/v1/serializers.py

from rest_framework import serializers
from menu.models import Dish

class DishSerializer(serializers.ModelSerializer):
    class Meta:
        model = Dish
        fields = ['id', 'category', 'name', 'description', 'price', 'image_url']
