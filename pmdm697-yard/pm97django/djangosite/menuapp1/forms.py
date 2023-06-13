from django import forms
from . import models


class MenumodelForm(forms.ModelForm):
    class Meta:
        model = models.Menumodel
        fields = [
            "mapplication",
            "mcomment",
            "mlink",
            "mdescription",
            "msort",
            "mstatus",
            "mgroup",
        ]
