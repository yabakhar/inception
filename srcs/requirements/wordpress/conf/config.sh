#!/bin/sh

sed -i 's/database_name_here/'"$MYSQL_DATABASE"'/g' /var/www/wordpress/wp-config.php
sed -i 's/username_here/'"$MYSQL_USER"'/g' /var/www/wordpress/wp-config.php
sed -i 's/password_here/'"$MYSQL_PASSWORD"'/g' /var/www/wordpress/wp-config.php
sed -i 's|'localhost'|mariadb|' /var/www/wordpress/wp-config.php

php-fpm7.3 -F