#### What is Caddy?

Caddy 2 is a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go.

### How to use this image

Caddy requires write access to two locations: a data directory, and a configuration directory. While it's not necessary to persist the files stored in the configuration directory, it can be convenient. However, it's very important to persist the data directory.

From the docs:

The data directory must not be treated as a cache. Its contents are not ephemeral or merely for the sake of performance. Caddy stores TLS certificates, private keys, OCSP staples, and other necessary information to the data directory. It should not be purged without an understanding of the implications.

This image provides for two mount-points for volumes: /data and /config.

In the examples below, a named volume caddy_data is mounted to /data, so that data will be persisted.

Note that named volumes are persisted across container restarts and terminations, so if you move to a new image version, the same data and config directories can be re-used.

## Install

### Using DECK

Install Caddy-stack from the DECK marketplace and follow the instructions on the GUI

### From terminal with Docker

```
git clone https://github.com/deck-app/caddy/
cd caddy
```

Edit `.env` file to change any settings before installing like data path change

```
docker-compose up -d
```
### Modifying project settings
From the DECK app, go to stack list and click on project's `More > configure > Advanced configuration`
Follow the instructions below and restart your stack from the GUI

#### Rebuilding from terminal

You have to rebuild the docker image after you make any changes to the project configuration, use the snippet below to rebuild and restart the stack

```
docker-compose stop && docker-compose up --build -d
```