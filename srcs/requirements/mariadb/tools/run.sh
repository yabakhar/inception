#!/bin/bash

if [ ! -d /var/lib/mysql/$MYSQL_DATABASE ]; then
    service mysql start
    mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
    mysql -u root -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
    mysql -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';"
    mysql -u root -e "CREATE USER '$MYSQL_USER_ROOT'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;"
    mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER_ROOT'@'%';"
    mysql -u root -e "FLUSH PRIVILEGES;"
    mysqladmin -u root password $MYSQL_USER_ROOT
    service mysql stop
fi
exec "$@"