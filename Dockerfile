FROM php:7.3.11-fpm-alpine

# install php extention pdo_mysql
RUN docker-php-ext-install pdo_mysql

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

EXPOSE 9000