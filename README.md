# Docker environment of Laravel + SimpleSAMLphp for develop

Docker environment for developing Laravel application using SAML authentication.

And the IdP server is SimpleSAMLphp.

# How to use

In this guide, we will run web application containers on https.

1. Make certificate file and put them to `docker/nginx/ssl/`

  ```bash
  $ openssl req -x509 -nodes -new -keyout server.key -out server.crt
  $ mv server.crt docker/nginx/ssl
  $ mv server.key docker/nginx/ssl
  ```

1. Add hosts to `/etc/hosts`

  ```
  127.0.0.1 my-laravel-sample.jp
  127.0.0.1 my-simplesamlphp.jp
  ```

1. Start up docker compose

  ```bash
  $ docer-compose up --build
  ```

  Then you can access to
  - [Laravel application](https://my-laravel-sample.jp)
    - Login user info
      - ID : `test-user`
      - Pass : `test`
  - [SimpleSAMLphp IdP Server](https://my-simplesamlphp.jp)
    - Admin password : `administrator`
