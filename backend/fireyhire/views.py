from django.shortcuts import render
from fireyhire.models import Resume
from fireyhire.serializers import ResumeSerializer
from rest_framework.permissions import AllowAny
from rest_framework import viewsets
from django.contrib.auth.models import User

# Create your views here.

class ResumeViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Resume.objects.all()
    serializer_class = ResumeSerializer
    permission_classes = [AllowAny]