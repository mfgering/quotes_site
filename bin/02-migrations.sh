#!/bin/bash
cd /opt/app/quotes
# Migrations
export DJANGO_SETTINGS_MODULE="proj_settings.settings"
python manage.py makemigrations
python manage.py makemigrations quotes
python manage.py migrate
