#!/bin/sh
if [[ ! -f index.html ]];
then
    cp /index.html /var/www/index.html
fi
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile