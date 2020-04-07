FROM php:7.3.11-fpm-alpine

RUN apk update \
    && apk add wget \
    curl \
    zip \
    unzip \
    gzip \
    git \
    --no-cache

WORKDIR /app

COPY ./ /app

RUN php composer.phar install
