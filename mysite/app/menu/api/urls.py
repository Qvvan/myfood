from django.urls import path, include


urlpatterns = [
    path('v1/', include('menu.api.v1.urls')),
]
