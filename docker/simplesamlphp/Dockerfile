FROM php:7.2.11-fpm-alpine3.6

WORKDIR /

RUN apk update \
    && apk add wget --no-cache

RUN wget https://simplesamlphp.org/download?latest -O simplesamlphp.tar.gz \
    && tar xzf simplesamlphp.tar.gz \
    && rm -f simplesamlphp.tar.gz \
    && TARGET_DIR=$(ls | grep simplesamlphp) \
    && mv $TARGET_DIR simplesamlphp

# 設定ファイルのコピー
COPY config/config.php /simplesamlphp/config/config.php
COPY config/zz-docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf

EXPOSE 9001