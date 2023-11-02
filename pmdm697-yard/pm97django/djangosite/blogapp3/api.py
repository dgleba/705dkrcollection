from rest_framework import viewsets, permissions

from . import serializers
from . import models


class Post3ViewSet(viewsets.ModelViewSet):
    """ViewSet for the Post3 class"""

    queryset = models.Post3.objects.all()
    serializer_class = serializers.Post3Serializer
    permission_classes = [permissions.IsAuthenticated]
