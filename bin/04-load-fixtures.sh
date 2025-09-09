#!/bin/bash
cd /opt/app/quotes
export DJANGO_SETTINGS_MODULE="proj_settings.settings"
python manage.py loaddata fixtures/categories.json
python manage.py loaddata fixtures/allfixtures.json
