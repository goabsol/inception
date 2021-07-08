FROM debian:buster
RUN apt-get upgrade && apt-get update && apt-get install wget curl -y && apt-get install php php-fpm php-opcache -y && apt-get install php-json php-mysqli -y\
    && apt-get install php-mbstring php-curl -y
RUN wget https://wordpress.org/latest.tar.gz && tar -zxvf latest.tar.gz
COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./www.conf /etc/php/fpm/pool.d/www.conf

COPY ./wp-config.php /wp-config.php

COPY ./run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh