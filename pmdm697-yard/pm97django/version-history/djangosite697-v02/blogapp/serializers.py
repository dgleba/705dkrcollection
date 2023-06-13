from rest_framework import serializers

from . import models


class ApostSerializer(serializers.ModelSerializer):

    class Meta:
        model = models.Apost
        fields = [
            "title",
            "body",
            "last_updated",
            "created",
        ]
