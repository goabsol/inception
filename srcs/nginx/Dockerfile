FROM debian:buster
RUN apt-get upgrade && apt-get update && apt-get install -qq nginx openssl apt-utils
COPY default /etc/nginx/conf.d/default.conf
COPY nginx.key /etc/ssl/private/
COPY nginx.crt /etc/ssl/certs/

CMD nginx -g "daemon off;"
