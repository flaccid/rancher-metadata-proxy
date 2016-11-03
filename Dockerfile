FROM nginx:stable-alpine

MAINTAINER Chris Fordham <chris@fordham-nagy.id.au>

ENV HTTP_USER rancher
ENV HTTP_PASSWORD rancher

RUN apk update && \
  apk add --upgrade openssl bash && \
  rm -rf /var/lib/apt/lists/* && \
  mkdir -p /opt/local/bin

COPY nginx.conf /etc/nginx/nginx.conf
COPY entry.sh /opt/local/bin/entry.sh
RUN chmod +x /opt/local/bin/entry.sh

EXPOSE 80

ENTRYPOINT ["/opt/local/bin/entry.sh"]

CMD ["nginx", "-g", "daemon off;"]
