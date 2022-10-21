#!/bin/sh
set -e
mv /etc/caddy/index.html /var/www/index.html
exec "$@"