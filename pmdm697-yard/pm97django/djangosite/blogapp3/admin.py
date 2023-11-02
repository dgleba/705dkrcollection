from django.contrib import admin
from django import forms

from . import models


class Post3AdminForm(forms.ModelForm):

    class Meta:
        model = models.Post3
        fields = "__all__"


class Post3Admin(admin.ModelAdmin):
    form = Post3AdminForm
    list_display = [
        "last_updated",
        "title",
        "created",
        "body",
    ]
    readonly_fields = [
        "last_updated",
        "title",
        "created",
        "body",
    ]


admin.site.register(models.Post3, Post3Admin)
