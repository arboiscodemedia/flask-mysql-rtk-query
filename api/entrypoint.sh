#!/usr/bin/env bash

echo "Waiting for MySQL..."

sleep 50

echo "MySQL started"

flask db upgrade # construct the data model

python -m flask run --host=0.0.0.0
 
