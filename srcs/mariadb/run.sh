#!/bin/sh
sed -i 's/127\.0\.0\.1/0\.0\.0\.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

mysql -u root -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY 'aaaaaaaa';"
mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -u root -e "USE wordpress; GRANT ALL PRIVILEGES ON * TO 'wp-user'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"

mysqld_safe
