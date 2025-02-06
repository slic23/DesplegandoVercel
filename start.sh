#!/bin/bash

echo "Instalando requerimientos..."
pip3 install -r requirements.txt

echo "Iniciando migraciones..."
python3 manage.py makemigrations && python3 manage.py migrate

echo "Colectando StaticFiles..."
python3 manage.py collectstatic --noinput

echo "Iniciando servidor..."
gunicorn myproject.wsgi:application --bind 0.0.0.0:$PORT
