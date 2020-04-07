FROM php:7.3.11-fpm-alpine

WORKDIR /

RUN apk update \
    && apk add wget --no-cache

RUN wget https://simplesamlphp.org/download?latest -O simplesamlphp.tar.gz \
    && tar xzf simplesamlphp.tar.gz \
    && rm -f simplesamlphp.tar.gz \
    && TARGET_DIR=$(ls | grep simplesamlphp) \
    && mv $TARGET_DIR simplesamlphp

# 設定ファイルのコピー
COPY config/zz-docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf
COPY config/config.php /simplesamlphp/config/config.php
COPY config/authsources.php /simplesamlphp/config/authsources.php
COPY metadata/saml20-idp-hosted.php /simplesamlphp/metadata/saml20-idp-hosted.php
COPY metadata/saml20-sp-remote.php /simplesamlphp/metadata/saml20-sp-remote.php

EXPOSE 9001