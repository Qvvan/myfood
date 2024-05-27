# your_project/api/v1/views.py

from rest_framework.decorators import api_view
from rest_framework.response import Response
from menu.models import Dish
from .serializers import DishSerializer

@api_view(['GET'])
def dish_list(request):
    dishes = Dish.objects.all()
    serializer = DishSerializer(dishes, many=True)
    return Response(serializer.data)
