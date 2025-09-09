#!/bin/bash
cd /opt/app/quotes
# Init the static files
export DJANGO_SETTINGS_MODULE="proj_settings.settings"
# Collect static may fail due to missing glyphicons
rm -fr proj_settings/_static
rm -fr _static
python manage.py collectstatic --no-post-process --clear --ignore bootstrap/themes
mkdir -p _static/bootstrap/themes/default/fonts
cp -r _static/bootstrap/fonts/* _static/bootstrap/themes/default/fonts/
python manage.py collectstatic
