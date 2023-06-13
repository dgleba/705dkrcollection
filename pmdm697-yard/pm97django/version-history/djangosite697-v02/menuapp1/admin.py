from django.contrib import admin
from django import forms

from . import models


class MenumodelAdminForm(forms.ModelForm):

    class Meta:
        model = models.Menumodel
        fields = "__all__"


class MenumodelAdmin(admin.ModelAdmin):
    form = MenumodelAdminForm
    list_display = [
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
    readonly_fields = [
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


admin.site.register(models.Menumodel, MenumodelAdmin)
