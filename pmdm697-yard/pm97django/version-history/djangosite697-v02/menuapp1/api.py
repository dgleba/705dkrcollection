from rest_framework import viewsets, permissions

from . import serializers
from . import models


class MenumodelViewSet(viewsets.ModelViewSet):
    """ViewSet for the Menumodel class"""

    queryset = models.Menumodel.objects.all()
    serializer_class = serializers.MenumodelSerializer
    permission_classes = [permissions.IsAuthenticated]
