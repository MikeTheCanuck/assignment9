#!/bin/bash
export PATH=$PATH:~/.local/bin
# 2017-03-02 troubleshooting - since getconfig can't see Travis ENV VARs, should this even run here?
# ./bin/getconfig.sh
python manage.py migrate --noinput
python manage.py collectstatic --noinput
gunicorn homelessAPI.wsgi:application -b :8000
