FROM php:5.6-fpm
RUN apt-get update && apt-get install -y \
        php5-pgsql \
        postgresql-client \
        libpq-dev \
    && docker-php-ext-install pdo pgsql pdo_pgsql