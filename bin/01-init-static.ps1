# Init the static files
$env:DJANGO_SETTINGS_MODULE="proj_settings.settings"
# Collect static may fail due to missing glyphicons
Remove-Item -Recurse -Force proj_settings/_static
Remove-Item -Recurse -Force _static
python manage.py collectstatic
mkdir proj_settings/_static/bootstrap/themes/default/fonts
Copy-Item proj_settings/_static/bootstrap/fonts/* proj_settings/_static/bootstrap/themes/default/fonts/
Move-Item -Force proj_settings/_static _static