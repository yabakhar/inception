#!/bin/bash
service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
mysql -u root -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';"
mysql -u root -e "CREATE USER '$MYSQL_USER_ROOT'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
mysql -u root -e "FLUSH PRIVILEGES;"

service mysql stop 
kill $(cat /var/run/mysqld/mysqld.pid)
exec "$@"

