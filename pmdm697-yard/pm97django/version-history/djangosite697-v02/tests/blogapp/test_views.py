import pytest
import test_helpers

from django.urls import reverse


pytestmark = [pytest.mark.django_db]


def tests_Apost_list_view(client):
    instance1 = test_helpers.create_blogapp_Apost()
    instance2 = test_helpers.create_blogapp_Apost()
    url = reverse("blogapp_Apost_list")
    response = client.get(url)
    assert response.status_code == 200
    assert str(instance1) in response.content.decode("utf-8")
    assert str(instance2) in response.content.decode("utf-8")


def tests_Apost_create_view(client):
    url = reverse("blogapp_Apost_create")
    data = {
        "title": "text",
        "body": "text",
    }
    response = client.post(url, data)
    assert response.status_code == 302


def tests_Apost_detail_view(client):
    instance = test_helpers.create_blogapp_Apost()
    url = reverse("blogapp_Apost_detail", args=[instance.pk, ])
    response = client.get(url)
    assert response.status_code == 200
    assert str(instance) in response.content.decode("utf-8")


def tests_Apost_update_view(client):
    instance = test_helpers.create_blogapp_Apost()
    url = reverse("blogapp_Apost_update", args=[instance.pk, ])
    data = {
        "title": "text",
        "body": "text",
    }
    response = client.post(url, data)
    assert response.status_code == 302
