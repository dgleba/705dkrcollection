from django import forms
from . import models


class ApostForm(forms.ModelForm):
    class Meta:
        model = models.Apost
        fields = [
            "title",
            "body",
        ]
