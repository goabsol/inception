#!/bin/sh

chown www-data:www-data /wordpress/
chmod -R 755 /wordpress/

service php7.3-fpm start
service php7.3-fpm stop

php-fpm7.3 -F -R