#!/bin/sh

chown www-data:www-data /var/www/adminer/adminer/
chmod -R 755 /var/www/adminer/adminer/

service php7.3-fpm start
service php7.3-fpm stop

php-fpm7.3 -F -R