from rest_framework import serializers

from . import models


class MenumodelSerializer(serializers.ModelSerializer):

    class Meta:
        model = models.Menumodel
        fields = [
            "mapplication",
            "mcomment",
            "mlink",
            "updated_at",
            "mdescription",
            "msort",
            "created_at",
            "mstatus",
            "mgroup",
        ]
