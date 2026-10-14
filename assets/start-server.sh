#!/bin/bash
# start-server.sh
cd quotes

# Append host machine's hostname to ALLOWED_HOSTS
if [ -n "$HOST_HOSTNAME" ]; then
    if [ -n "$ALLOWED_HOSTS" ]; then
        export ALLOWED_HOSTS="${ALLOWED_HOSTS},${HOST_HOSTNAME}"
    else
        export ALLOWED_HOSTS="${HOST_HOSTNAME}"
    fi
fi

# Initialize static files and database
python manage.py collectstatic --noinput
python manage.py migrate --noinput

# Create superuser if credentials provided and user doesn't exist
if [ -n "$DJANGO_SUPERUSER_USERNAME" ] && [ -n "$DJANGO_SUPERUSER_PASSWORD" ] ; then
    python manage.py shell -c "from django.contrib.auth.models import User; exit(0 if User.objects.filter(username='$DJANGO_SUPERUSER_USERNAME').exists() else 1)" || \
    python manage.py createsuperuser --no-input
fi

# Start gunicorn and nginx
DJANGO_SETTINGS_MODULE=config.settings
gunicorn wsgi:application --user www-data --bind 0.0.0.0:8010 --workers 3 &
nginx -g "daemon off;"