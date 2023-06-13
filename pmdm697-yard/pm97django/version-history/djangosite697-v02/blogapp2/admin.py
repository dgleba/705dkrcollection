from django.contrib import admin
from django import forms

from . import models


class ApostAdminForm(forms.ModelForm):

    class Meta:
        model = models.Apost
        fields = "__all__"


class ApostAdmin(admin.ModelAdmin):
    form = ApostAdminForm
    list_display = [
        "title",
        "body",
        "last_updated",
        "created",
    ]
    readonly_fields = [
        "title",
        "body",
        "last_updated",
        "created",
    ]


admin.site.register(models.Apost, ApostAdmin)
