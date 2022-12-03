#!/bin/bash
# start-server.sh
if [ -n "$DJANGO_SUPERUSER_USERNAME" ] && [ -n "$DJANGO_SUPERUSER_PASSWORD" ] ; then
    (cd quotes; python manage.py createsuperuser --no-input)
fi
DJANGO_SETTINGS_MODULE=proj_settings.settings
(cd quotes; gunicorn wsgi:application --user www-data --bind 0.0.0.0:8010 --workers 3) &
nginx -g "daemon off;"