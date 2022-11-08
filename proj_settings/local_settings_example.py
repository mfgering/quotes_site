# This is an example of a local_settings.py file
# Modify the settings in this file and save it as your own local_settings.py
# The local_settings.py file is ignored in git, so you don't have to worry
# about saving sensitive information in a repository.
#
# This file is loaded by the settings.py file in a way that allows
# you to add and *modify* any setting.
# It uses the Golding technique: https://code.djangoproject.com/wiki/SplitSettings#RobGoldingsmethod

LOCAL_SETTINGS = True
from .settings import *

if not DEBUG:
    # The debug database is normally sqlite. You need a real db server in production.
    DATABASES['default'] = {
            'ENGINE': 'django.db.backends.mysql',
            'NAME': '<database name>',
            'USER': '<database user',
            'PASSWORD': '<database password>',
            'HOST': '<database server host>',
            'PORT': '3306',
        }

# The MANAGERS setting is used to send contact form email
MANAGERS = [('<name 1>', 'name1@example.com')]

# The email settings are used to send email
# See django docs for details
DEFAULT_FROM_EMAIL = "Quotes <quotes@<your server>"
EMAIL_HOST = '<smtp server host>'
EMAIL_HOST_USER = '<username>'
EMAIL_HOST_PASSWORD = '<password>'
EMAIL_PORT = 465
EMAIL_USE_SSL = True

# Settings used by the recaptcha2 module.
RECAPTCHA_PRIVATE_KEY = '<private key>'
RECAPTCHA_PUBLIC_KEY = '<public key>'
