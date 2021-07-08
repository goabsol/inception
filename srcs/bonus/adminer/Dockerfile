FROM debian:buster
RUN apt-get upgrade && apt-get update && apt-get install php php-curl php-cli php-mysql php-gd php-fpm wget -y
RUN mkdir -p /var/www/adminer/adminer
RUN wget "http://www.adminer.org/latest.php" -O /var/www/adminer/adminer/index.php

COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./www.conf /etc/php/fpm/pool.d/www.conf
COPY ./run.sh /run.sh
RUN chmod +x /run.sh

CMD /run.sh