#!/bin/sh
sed -i 's/127\.0\.0\.1/0\.0\.0\.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

RESULT=$(mysqlshow wordpress | grep -v Wildcard | grep -o wordpress)
if [ "$RESULT" != "wordpress" ]; then
    mysql -u root -e "CREATE USER IF NOT EXISTS '$WP_DATABASE_USER'@'%' IDENTIFIED BY '$WP_DATABASE_PASSWORD';"
	mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress;"
	mysql -u root -e "USE wordpress; GRANT ALL PRIVILEGES ON * TO '$WP_DATABASE_USER'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
	mysql -u root wordpress < /wordpress.sql
fi

mysqld_safe
