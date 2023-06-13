from django.urls import path, include
from rest_framework import routers

from . import api
from . import views
from . import htmx


router = routers.DefaultRouter()
router.register("Menumodel", api.MenumodelViewSet)

urlpatterns = (
    path("api/v1/", include(router.urls)),
    
    path("menuapp1/Menumodel/", views.MenumodelListView.as_view(template_name = "menuapp1/menumodel_list01.html"), name="menuapp1_Menumodel_list"),
    
    path("menuapp1/MenumodelV/", views.MenumodelListView.as_view(template_name = "menuapp1/menumodel_list_v.html"), name="menuapp1_Menumodel_list_v"),
    
    
    path("menuapp1/Menumodel/create/", views.MenumodelCreateView.as_view(), name="menuapp1_Menumodel_create"),
    
    path("menuapp1/Menumodel/detail/<int:pk>/", views.MenumodelDetailView.as_view(), name="menuapp1_Menumodel_detail"),
    path("menuapp1/Menumodel/update/<int:pk>/", views.MenumodelUpdateView.as_view(), name="menuapp1_Menumodel_update"),
    path("menuapp1/Menumodel/delete/<int:pk>/", views.MenumodelDeleteView.as_view(), name="menuapp1_Menumodel_delete"),

    path("menuapp1/htmx/Menumodel/", htmx.HTMXMenumodelListView.as_view(), name="menuapp1_Menumodel_htmx_list"),
    path("menuapp1/htmx/Menumodel/create/", htmx.HTMXMenumodelCreateView.as_view(), name="menuapp1_Menumodel_htmx_create"),
    path("menuapp1/htmx/Menumodel/delete/<int:pk>/", htmx.HTMXMenumodelDeleteView.as_view(), name="menuapp1_Menumodel_htmx_delete"),
)
