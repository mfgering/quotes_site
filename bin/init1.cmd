set DJANGO_SETTINGS_MODULE=proj_settings.settings

mkdir proj_settings\_static\bootstrap\themes\default\fonts\
copy proj_settings\_static\bootstrap\fonts proj_settings\_static\bootstrap\themes\default\fonts\


REM Collect static may fail due to missing glyphicons
python manage.py collectstatic
mkdir proj_settings\_static\bootstrap\themes\default\fonts\
copy proj_settings\_static\bootstrap\fonts proj_settings\_static\bootstrap\themes\default\fonts\
