#!/bin/bash

virtualenv -p python3.6 envname
source envname/bin/activate
pip3 install -r requirments.txt
cd <git_project_name>
python -V
pip list
pwd
python manage.py test
