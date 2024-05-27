#!/bin/sh

echo "Подключение к PostgreSQL..."
while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
  sleep 0.1
done
echo "PostgreSQL подключен!"

echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.filter(username='$SUPERUSER_USERNAME').exists() or User.objects.create_superuser('$SUPERUSER_USERNAME', '$SUPERUSER_EMAIL', '$SUPERUSER_PASSWORD')" | python manage.py shell

exec "$@"