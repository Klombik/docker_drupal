FROM drupal:latest

# Установка дополнительных пакетов (если необходимо)
RUN apt-get update && apt-get install -y php-mysql

# Настройка Drupal (база данных, конфигурация)
COPY settings.php settings.php

EXPOSE 80

CMD ["php-fpm"]