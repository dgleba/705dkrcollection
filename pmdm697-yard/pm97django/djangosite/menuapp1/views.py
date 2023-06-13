from django.views import generic
from django.urls import reverse_lazy
from . import models
from . import forms


class MenumodelListView(generic.ListView):
    model = models.Menumodel
    form_class = forms.MenumodelForm

# class MenumodelListViewV(generic.ListView):
    # model = models.Menumodel
    # form_class = forms.MenumodelForm
    # # template_name = "menuapp1/menumodel_list_v2.html"


class MenumodelCreateView(generic.CreateView):
    model = models.Menumodel
    form_class = forms.MenumodelForm


class MenumodelDetailView(generic.DetailView):
    model = models.Menumodel
    form_class = forms.MenumodelForm


class MenumodelUpdateView(generic.UpdateView):
    model = models.Menumodel
    form_class = forms.MenumodelForm
    pk_url_kwarg = "pk"


class MenumodelDeleteView(generic.DeleteView):
    model = models.Menumodel
    success_url = reverse_lazy("menuapp1_Menumodel_list")
