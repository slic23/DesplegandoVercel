#!/bin/bash
pip install gunicorn
gunicorn locallibrary.wsgi:application 
