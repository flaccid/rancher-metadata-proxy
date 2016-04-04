FROM nginx:stable-alpine

MAINTAINER Chris Fordham <chris@fordham-nagy.id.au>

EXPOSE 80

COPY nginx.conf /etc/nginx/nginx.conf
