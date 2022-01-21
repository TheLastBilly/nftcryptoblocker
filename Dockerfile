FROM php:fpm-alpine

RUN echo "UTC" > /etc/timezone

WORKDIR /tmp/
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN rm -rf composer-setup.php

RUN apk add --no-cache composer bash
RUN mkdir /app
WORKDIR /app

# RUN composer install --no-dev