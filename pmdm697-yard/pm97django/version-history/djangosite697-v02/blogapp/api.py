from rest_framework import viewsets, permissions

from . import serializers
from . import models


class ApostViewSet(viewsets.ModelViewSet):
    """ViewSet for the Apost class"""

    queryset = models.Apost.objects.all()
    serializer_class = serializers.ApostSerializer
    permission_classes = [permissions.IsAuthenticated]
