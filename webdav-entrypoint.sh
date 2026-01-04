#!/bin/sh

# Set permissions for WebDAV data directory
chmod -R 775 /var/lib/dav/data 2>/dev/null || true

# Execute the original entrypoint
exec docker-entrypoint.sh "$@"