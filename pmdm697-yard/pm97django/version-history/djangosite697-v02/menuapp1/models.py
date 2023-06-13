from django.db import models
from django.urls import reverse


class Menumodel(models.Model):

    # Fields
    mapplication = models.CharField(max_length=350)
    mcomment = models.CharField(max_length=230, blank=True, null=True)
    mlink = models.URLField(blank=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, editable=False)
    mdescription = models.CharField(max_length=1930, blank=True, null=True)
    msort = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True, editable=False)
    mstatus = models.IntegerField( blank=True, null=True)
    mgroup = models.CharField(max_length=430, blank=True, null=True)

    class Meta:
        pass

    def __str__(self):
        return str(self.pk)

    def get_absolute_url(self):
        return reverse("menuapp1_Menumodel_detail", args=(self.pk,))

    def get_update_url(self):
        return reverse("menuapp1_Menumodel_update", args=(self.pk,))

    @staticmethod
    def get_htmx_create_url():
        return reverse("menuapp1_Menumodel_htmx_create")

    def get_htmx_delete_url(self):
        return reverse("menuapp1_Menumodel_htmx_delete", args=(self.pk,))
