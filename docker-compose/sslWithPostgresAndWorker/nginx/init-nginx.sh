#!/bin/sh
set -e

# Inject env vars into the config template
envsubst '$$SUBDOMAIN $$DOMAIN_NAME' < /etc/nginx/nginx.conf.local.template > /etc/nginx/conf.d/default.conf

# Start nginx
nginx -g 'daemon off;'
