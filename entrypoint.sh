#!/bin/bash
set -e

show_help() {
  echo """
  Commands
  -----------------------------------------
  start_dev      : start the django dev server
  test           : run tests
  manage         : run django commands (e.g. manage makemigrations)
  pipenv         : run pipenv commands (e.g. pipenv install)
  """
}

export PYTHONPATH="/openbtc/:$PYTHONPATH"

case "$1" in
  "start_dev" )
    # run migrations first if theres any && start the dev server
    python ./manage.py migrate --noinput
    python ./manage.py runserver 0.0.0.0:8000
  ;;
  "manage" )
    # run django commands
    python ./manage.py "${@:2}"
  ;;
  "test" )
    # run django commands
    python ./manage.py test
  ;;
  "pipenv" )
    # run pipenv commands in container
    pipenv "${@:2}"
  ;;
  * )
    show_help
  ;;
esac