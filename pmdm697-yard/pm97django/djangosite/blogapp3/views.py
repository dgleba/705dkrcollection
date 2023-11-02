from django.views import generic
from django.urls import reverse_lazy
from . import models
from . import forms


class Post3ListView(generic.ListView):
    model = models.Post3
    form_class = forms.Post3Form


class Post3CreateView(generic.CreateView):
    model = models.Post3
    form_class = forms.Post3Form


class Post3DetailView(generic.DetailView):
    model = models.Post3
    form_class = forms.Post3Form


class Post3UpdateView(generic.UpdateView):
    model = models.Post3
    form_class = forms.Post3Form
    pk_url_kwarg = "pk"


class Post3DeleteView(generic.DeleteView):
    model = models.Post3
    success_url = reverse_lazy("blogapp3_Post3_list")
