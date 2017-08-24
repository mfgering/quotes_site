Quote-o-Matic
=============

## Installation and Configuration

### Install

The following sections provide details for installing and running the app.

It was developed on Windows 10 and runs on CentOS 7.

#### Python version

This django application was built with python version 3.5.

#### Create virtual environment

Create a virtual python environment (recommended) if you want:

```shell
$ mkvirtualenv --python=<path-to-python3> --no-site-packages quotes
blah blah

$ workon quotes
blah blah
```

#### Install python dependencies

Using the requirements defined in the project:

```shell
$ pip install -r requirements.in
blah blah
```

#### Get a reCAPTCHA account

The contact form uses reCAPTCHA to protect against spammers. You can get
a free account here: <https://www.google.com/recaptcha>

Take note of your API keys so you can configure your `local_settings.py` file later.

#### Create a local_settings File

The settings are defined in the `settings.py` in the `quotes` directory. 

It will attempt to load a `local_settings` module. Instead
of modifying the `settings.py` file, create and modify
your own `local_settings.py` file. Use the `local_settings_example.py`
file as a starter.

#### Create a Database

For development or testing, the `settings.py` file defines a local *sqlite* database.

For exposing this app to the internet you will want a real database. Use the
`local_settings.py` file to specify your database and credentials for accessing it.

#### Initialize the Database

Initialize the django database:

```shell
$ python manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, main, sessions
Running migrations:
  Applying contenttypes.0001_initial... OK
  Applying auth.0001_initial... OK
  blah blah

```

#### Create superuser

```shell
$ python manage.py createsuperuser
Username (leave blank to use '<you>'):
Email address:
Password:
Password (again):
Superuser created successfully.

```

#### Load Fixtures

You can start with predefined categories and quotes:

```shell
$ python manage.py loaddata fixtures/categories.json
Installed 2 object(s) from 1 fixture(s)

$ python manage.py loaddata fixtures/marcus.json
Installed 267 object(s) from 1 fixture(s)

$ python manage.py loaddata fixtures/ferenghi.json
Installed 287 object(s) from 1 fixture(s)

```

