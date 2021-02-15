DeadSailorMuzic website
=======================

The application is powered by the [Ghost blogging platform](https://ghost.org/).

## Prerequisites

- Nginx
- Docker with Docker Compose

## Web server

The `nginx/deadsailor.net` configuration file needs to be added to the Nginx sites config.
On an Ubuntu box this would typically be under `/etc/nginx/sites-enabled/`.

### SSL

We are using the Let's Encrypt SSL certification service.
To install it on Ubuntu/Debian:

```
# add-apt-repository ppa:certbot/certbot#
# apt install python-certbot-nginx
```

Because the configuration is already included in the file mentioned above, you might want
to skip the automatic Nginx configuration when prompted by the certbot command below:

```
# certbot --nginx -d deadsailor.net -d www.deadsailor.net

# systemctl reload nginx
```

### E-mail configuration

You might want to configure the e-mail service by cloning the `.env-dist` file supplied
and saving it as `.env` with login credentials.

If you are using GMail, you will need to enable 2-factor authentication and generate an
application password in the Security section of your Google Account for the e-mail
functionality to work.

## Application

### Start

```
docker-compose up -d
```

### Rebuild

```
docker-compose up -d --build
```
