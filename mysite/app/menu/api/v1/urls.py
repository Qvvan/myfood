# your_project/api/v1/urls.py

from django.urls import path
from .views import dish_list

urlpatterns = [
    path('dishes/', dish_list, name='dish_list'),
]
