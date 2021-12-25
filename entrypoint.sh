#!/bin/sh

python manage.py migrate --no-input
python manage.py collectstatic --no-input

gunicorn --bind unix:/socklink/connect.sock config.wsgi:application
