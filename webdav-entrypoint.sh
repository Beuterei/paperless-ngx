#!/bin/sh
set -e

chmod -R 777 /var/lib/dav/data

exec /usr/local/bin/docker-entrypoint.sh httpd-foreground