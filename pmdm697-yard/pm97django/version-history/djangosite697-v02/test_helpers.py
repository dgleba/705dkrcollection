import random
import string

from django.contrib.auth.models import User
from django.contrib.auth.models import AbstractUser
from django.contrib.auth.models import AbstractBaseUser
from django.contrib.auth.models import Group
from django.contrib.contenttypes.models import ContentType

from blogapp import models as blogapp_models
from menuapp1 import models as menuapp1_models


def random_string(length=10):
    # Create a random string of length length
    letters = string.ascii_lowercase
    return "".join(random.choice(letters) for i in range(length))


def create_User(**kwargs):
    defaults = {
        "username": "%s_username" % random_string(5),
        "email": "%s_username@tempurl.com" % random_string(5),
    }
    defaults.update(**kwargs)
    return User.objects.create(**defaults)


def create_AbstractUser(**kwargs):
    defaults = {
        "username": "%s_username" % random_string(5),
        "email": "%s_username@tempurl.com" % random_string(5),
    }
    defaults.update(**kwargs)
    return AbstractUser.objects.create(**defaults)


def create_AbstractBaseUser(**kwargs):
    defaults = {
        "username": "%s_username" % random_string(5),
        "email": "%s_username@tempurl.com" % random_string(5),
    }
    defaults.update(**kwargs)
    return AbstractBaseUser.objects.create(**defaults)


def create_Group(**kwargs):
    defaults = {
        "name": "%s_group" % random_string(5),
    }
    defaults.update(**kwargs)
    return Group.objects.create(**defaults)


def create_ContentType(**kwargs):
    defaults = {
    }
    defaults.update(**kwargs)
    return ContentType.objects.create(**defaults)


def create_blogapp_Apost(**kwargs):
    defaults = {}
    defaults["title"] = ""
    defaults["body"] = ""
    defaults.update(**kwargs)
    return blogapp_models.Apost.objects.create(**defaults)
def create_menuapp1_Menumodel(**kwargs):
    defaults = {}
    defaults["mapplication"] = ""
    defaults["mcomment"] = ""
    defaults["mlink"] = ""
    defaults["mdescription"] = ""
    defaults["msort"] = ""
    defaults["mstatus"] = ""
    defaults["mgroup"] = ""
    defaults.update(**kwargs)
    return menuapp1_models.Menumodel.objects.create(**defaults)
