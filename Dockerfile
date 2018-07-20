FROM php:7.2-cli-alpine

ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_CACHE_DIR=/srv/cache/composer

WORKDIR /root/project

RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- --install-dir=/usr/local/bin --quiet \
    && mv /usr/local/bin/composer.phar /usr/local/bin/composer \
    && composer global require hirak/prestissimo

RUN apk update && apk add --no-cache git tree vim
