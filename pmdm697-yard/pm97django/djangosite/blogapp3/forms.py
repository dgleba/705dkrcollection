from django import forms
from . import models


class Post3Form(forms.ModelForm):
    class Meta:
        model = models.Post3
        fields = [
            "title",
            "body",
        ]
