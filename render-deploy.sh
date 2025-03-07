set -e

poetry run flask --app src.app db upgrade
poetry run gunicorn.wsgi:app