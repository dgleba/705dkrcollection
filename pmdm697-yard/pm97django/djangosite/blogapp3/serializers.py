from rest_framework import serializers

from . import models


class Post3Serializer(serializers.ModelSerializer):

    class Meta:
        model = models.Post3
        fields = [
            "last_updated",
            "title",
            "created",
            "body",
        ]
