from django.urls import path
from .views import *
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('',Product_list.as_view()),
    path('<int:id>',Product_edit.as_view()),
]+ static(settings.MEDIA_URL,document_root = settings.MEDIA_ROOT)
