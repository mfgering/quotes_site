# Init the static files
$env:DJANGO_SETTINGS_MODULE="proj_settings.settings"
python manage.py makemigrations
python manage.py makemigrations quotes
python manage.py migrate
