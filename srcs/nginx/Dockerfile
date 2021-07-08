FROM debian:buster
RUN apt-get upgrade && apt-get update && apt-get install -qq nginx openssl apt-utils
COPY default /etc/nginx/conf.d/default.conf
COPY nginx.key /etc/ssl/private/
COPY nginx.crt /etc/ssl/certs/

RUN mkdir -p /var/www/static/static
COPY ./static /var/www/static/static/

RUN chown www-data:www-data /var/www/static
RUN chmod -R 755 /var/www/static

CMD nginx -g "daemon off;"
