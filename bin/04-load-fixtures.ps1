# Init the static files
$env:DJANGO_SETTINGS_MODULE="proj_settings.settings"
python manage.py loaddata fixtures/categories.json
python manage.py loaddata fixtures/allfixtures.json
