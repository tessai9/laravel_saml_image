FROM php:7.3.11-fpm-alpine

RUN apk update \
    && apk add git

WORKDIR /app

COPY . /app

RUN php composer.phar install
