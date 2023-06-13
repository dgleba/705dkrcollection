from django.urls import path, include
from rest_framework import routers

from . import api
from . import views
from . import htmx


router = routers.DefaultRouter()
router.register("Apost", api.ApostViewSet)

urlpatterns = (
    path("api/v1/", include(router.urls)),
    path("blogapp/Apost/", views.ApostListView.as_view(), name="blogapp_Apost_list"),
    path("blogapp/Apost/create/", views.ApostCreateView.as_view(), name="blogapp_Apost_create"),
    path("blogapp/Apost/detail/<int:pk>/", views.ApostDetailView.as_view(), name="blogapp_Apost_detail"),
    path("blogapp/Apost/update/<int:pk>/", views.ApostUpdateView.as_view(), name="blogapp_Apost_update"),
    path("blogapp/Apost/delete/<int:pk>/", views.ApostDeleteView.as_view(), name="blogapp_Apost_delete"),

    path("blogapp/htmx/Apost/", htmx.HTMXApostListView.as_view(), name="blogapp_Apost_htmx_list"),
    path("blogapp/htmx/Apost/create/", htmx.HTMXApostCreateView.as_view(), name="blogapp_Apost_htmx_create"),
    path("blogapp/htmx/Apost/delete/<int:pk>/", htmx.HTMXApostDeleteView.as_view(), name="blogapp_Apost_htmx_delete"),
)
