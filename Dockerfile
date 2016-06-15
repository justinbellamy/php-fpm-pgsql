FROM php:5.6-fpm
RUN apt-get update && apt-get install -y \
        php5-pgsql \
        postgresql-client \
        libpq-dev \
        php-pear \
        curl \
        libmemcached-dev \
        libcurl4-openssl-dev \
        git-core \
    && docker-php-ext-install pdo pgsql pdo_pgsql

ADD https://pecl.php.net/get/memcached-2.2.0.tgz /usr/src/php/ext/memcached.tgz
RUN tar -xf /usr/src/php/ext/memcached.tgz -C /usr/src/php/ext/ && \
    rm /usr/src/php/ext/memcached.tgz && \
    docker-php-ext-install memcached-2.2.0