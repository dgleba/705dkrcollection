from rest_framework import viewsets, permissions

from . import serializers
from . import models


class Menu0ViewSet(viewsets.ModelViewSet):
    """ViewSet for the Menu0 class"""

    queryset = models.Menu0.objects.all()
    serializer_class = serializers.Menu0Serializer
    
    # permission_classes = [permissions.IsAuthenticated]
