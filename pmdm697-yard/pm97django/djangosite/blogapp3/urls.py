from django.urls import path, include
from rest_framework import routers

from . import api
from . import views
from . import htmx


router = routers.DefaultRouter()
router.register("Post3", api.Post3ViewSet)

urlpatterns = (
    path("api/v1/", include(router.urls)),
    path("blogapp3/Post3/", views.Post3ListView.as_view(), name="blogapp3_Post3_list"),
    path("blogapp3/Post3/create/", views.Post3CreateView.as_view(), name="blogapp3_Post3_create"),
    path("blogapp3/Post3/detail/<int:pk>/", views.Post3DetailView.as_view(), name="blogapp3_Post3_detail"),
    path("blogapp3/Post3/update/<int:pk>/", views.Post3UpdateView.as_view(), name="blogapp3_Post3_update"),
    path("blogapp3/Post3/delete/<int:pk>/", views.Post3DeleteView.as_view(), name="blogapp3_Post3_delete"),

    path("blogapp3/htmx/Post3/", htmx.HTMXPost3ListView.as_view(), name="blogapp3_Post3_htmx_list"),
    path("blogapp3/htmx/Post3/create/", htmx.HTMXPost3CreateView.as_view(), name="blogapp3_Post3_htmx_create"),
    path("blogapp3/htmx/Post3/delete/<int:pk>/", htmx.HTMXPost3DeleteView.as_view(), name="blogapp3_Post3_htmx_delete"),
)
