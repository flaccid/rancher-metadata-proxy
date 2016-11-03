#!/bin/bash -e

if [[ ${AUTH_DISABLED:-0} == 1 ]]; then
  sed -r -i 's/(auth_.*)/#\1/g' /etc/nginx/nginx.conf
fi

# update the http basic auth password
echo -n "$HTTP_USER:" >> /etc/nginx/.htpasswd
openssl passwd -apr1 "$HTTP_PASSWORD" >> /etc/nginx/.htpasswd

echo executing: "$@"
exec "$@"
