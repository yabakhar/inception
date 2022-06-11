#!/bin/sh

sed -i 's|listen = /run/php/php7.3-fpm.sock|listen = 9000|' /etc/php/7.3/fpm/pool.d/www.conf
sed -i 's/database_name_here/'"$MYSQL_DATABASE"'/g' /var/www/wordpress/wp-config.php
sed -i 's/username_here/'"$MYSQL_DATABASE"'/g' /var/www/wordpress/wp-config.php
sed -i 's/password_here/'"$MYSQL_DATABASE"'/g' /var/www/wordpress/wp-config.php
sed -i 's|'localhost'|mariadb|' /var/www/wordpress/wp-config.php

php-fpm7.3 -F