#!/bin/sh
set -e

chmod -R 775 /var/lib/dav/data

exec /usr/local/bin/docker-entrypoint.sh httpd-foreground