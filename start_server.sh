#!/bin/sh

USER=$(whoami)
DAEMON=/Users/$USER/env/bin/gunicorn
RUN_DIR=/tmp/
PID_FILE=$RUN_DIR/flask.pid
SOCKET=$RUN_DIR/flask.sock

export PYTHONPATH=/Users/$USER/env/lib/python2.7:/Users/$USER/git/connect-four-backend/main_app

$DAEMON --log-level debug --bind 0.0.0.0:8080 -w 1 --reload main:app --timeout 60

