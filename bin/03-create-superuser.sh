#!/bin/bash
cd /opt/app/quotes
export DJANGO_SETTINGS_MODULE="proj_settings.settings"
python manage.py createsuperuser
