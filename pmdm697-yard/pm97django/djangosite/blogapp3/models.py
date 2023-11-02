from django.db import models
from django.urls import reverse


class Post3(models.Model):

    # Fields
    last_updated = models.DateTimeField(auto_now=True, editable=False)
    title = models.CharField(max_length=330)
    created = models.DateTimeField(auto_now_add=True, editable=False)
    body = models.TextField()

    class Meta:
        pass

    def __str__(self):
        return str(self.pk)

    def get_absolute_url(self):
        return reverse("blogapp3_Post3_detail", args=(self.pk,))

    def get_update_url(self):
        return reverse("blogapp3_Post3_update", args=(self.pk,))

    @staticmethod
    def get_htmx_create_url():
        return reverse("blogapp3_Post3_htmx_create")

    def get_htmx_delete_url(self):
        return reverse("blogapp3_Post3_htmx_delete", args=(self.pk,))
