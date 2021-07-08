#!/bin/sh

sed -i "s/CHANGE_DB_HOST/$WP_HOSTNAME/g" /wp-config.php
sed -i "s/CHANGE_DB_NAME/$WP_DATABASE_NAME/g" /wp-config.php
sed -i "s/CHANGE_DB_USER/$WP_DATABASE_USER/g" /wp-config.php
sed -i "s/CHANGE_DB_PASSWORD/$WP_DATABASE_PASSWORD/g" /wp-config.php

cp /wp-config.php /wordpress/wp-config.php

chown www-data:www-data /wordpress/
chmod -R 755 /wordpress/

service php7.3-fpm start
service php7.3-fpm stop

php-fpm7.3 -F -R