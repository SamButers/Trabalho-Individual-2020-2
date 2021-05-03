#!/bin/bash

function_postgres_ready() {
python << END
import socket
import time
import os

port = int(os.environ["POSTGRES_PORT"])

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('localhost', port))
s.close()
END
}

pip install -r requirements

until function_postgres_ready; do
  >&2 echo "======= POSTGRES IS UNAVAILABLE, WAITING"
  sleep 3
done
echo "======= POSTGRES IS UP, CONNECTING"

echo '======= RUNNING MIGRATIONS'
python manage.py migrate

echo '======= RUNNING SERVER'
python manage.py runserver 0.0.0.0:8000
