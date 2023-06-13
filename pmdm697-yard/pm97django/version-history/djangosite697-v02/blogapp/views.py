from django.views import generic
from django.urls import reverse_lazy
from . import models
from . import forms


class ApostListView(generic.ListView):
    model = models.Apost
    form_class = forms.ApostForm


class ApostCreateView(generic.CreateView):
    model = models.Apost
    form_class = forms.ApostForm


class ApostDetailView(generic.DetailView):
    model = models.Apost
    form_class = forms.ApostForm


class ApostUpdateView(generic.UpdateView):
    model = models.Apost
    form_class = forms.ApostForm
    pk_url_kwarg = "pk"


class ApostDeleteView(generic.DeleteView):
    model = models.Apost
    success_url = reverse_lazy("blogapp_Apost_list")
