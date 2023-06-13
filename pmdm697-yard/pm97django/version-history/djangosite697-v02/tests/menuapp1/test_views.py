import pytest
import test_helpers

from django.urls import reverse


pytestmark = [pytest.mark.django_db]


def tests_Menumodel_list_view(client):
    instance1 = test_helpers.create_menuapp1_Menumodel()
    instance2 = test_helpers.create_menuapp1_Menumodel()
    url = reverse("menuapp1_Menumodel_list")
    response = client.get(url)
    assert response.status_code == 200
    assert str(instance1) in response.content.decode("utf-8")
    assert str(instance2) in response.content.decode("utf-8")


def tests_Menumodel_create_view(client):
    url = reverse("menuapp1_Menumodel_create")
    data = {
        "mapplication": "text",
        "mcomment": "text",
        "mlink": http://127.0.0.1,
        "mdescription": "text",
        "msort": 1,
        "mstatus": 1,
        "mgroup": "text",
    }
    response = client.post(url, data)
    assert response.status_code == 302


def tests_Menumodel_detail_view(client):
    instance = test_helpers.create_menuapp1_Menumodel()
    url = reverse("menuapp1_Menumodel_detail", args=[instance.pk, ])
    response = client.get(url)
    assert response.status_code == 200
    assert str(instance) in response.content.decode("utf-8")


def tests_Menumodel_update_view(client):
    instance = test_helpers.create_menuapp1_Menumodel()
    url = reverse("menuapp1_Menumodel_update", args=[instance.pk, ])
    data = {
        "mapplication": "text",
        "mcomment": "text",
        "mlink": http://127.0.0.1,
        "mdescription": "text",
        "msort": 1,
        "mstatus": 1,
        "mgroup": "text",
    }
    response = client.post(url, data)
    assert response.status_code == 302
