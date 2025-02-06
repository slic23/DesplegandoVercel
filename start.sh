#!/bin/bash
pip install gunicorn
gunicorn locallibrary.wsgi:application --bind 0.0.0.0:8000
