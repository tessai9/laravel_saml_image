FROM nginx:alpine

RUN mkdir /log

COPY config/application.conf /etc/nginx/conf.d/application.conf
COPY config/simplesamlphp.conf /etc/nginx/conf.d/simplesamlphp.conf

COPY ssl /etc/nginx/ssl
