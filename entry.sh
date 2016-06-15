#!/bin/bash -e

# update the http basic auth password
echo -n "$HTTP_USER:" >> /etc/nginx/.htpasswd
openssl passwd -apr1 "$HTTP_PASSWORD" >> /etc/nginx/.htpasswd

echo executing: "$@"
exec "$@"
