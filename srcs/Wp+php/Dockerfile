FROM debian:buster
RUN apt upgrade && apt update && apt install wget curl -y && apt install php php-fpm php-opcache -y && apt install php-json php-mysqli -y\
    && apt install php-mbstring php-curl -y
RUN wget https://wordpress.org/latest.tar.gz && tar -zxvf latest.tar.gz
COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./www.conf /etc/php/fpm/pool.d/www.conf
COPY ./run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh