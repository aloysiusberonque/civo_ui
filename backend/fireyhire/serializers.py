from fireyhire.models import Resume
from rest_framework import serializers

class ResumeSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Resume
        fields = ['url', 'name', 'organization', 'details']
