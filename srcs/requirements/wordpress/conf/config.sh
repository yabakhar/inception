#!/bin/sh

if [ ! -d /run/php ]; then
    mkdir -p /run/php
    chmod -R 777 /run/php
fi

# if [ ! -f /var/www/wordpress/wp-config.php ]; then
    mkdir -p /var/www/wordpress
    chmod -R 777 /var/www/wordpress
    chown -R www-data:www-data /var/www/wordpress    
    cd /var/www/wordpress
    wp core download --allow-root
    # wp config create --allow-root --url=$DOMAIN_NAME --dbhost=mariadb --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD
    wp config create --allow-root --url=localhost --dbhost=mariadb --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD
    wp core install --allow-root --url=localhost --title=yabakhar --admin_user=yabakhar --admin_password=yabakhar --admin_email=yabakhar@example.com --skip-email
    wp user create --allow-root avnn ann@exavmple.com --user_pass=Qwerty.123
    sed -i 's|listen = /run/php/php7.3-fpm.sock|listen = 0.0.0.0:9000|g' /etc/php/7.3/fpm/pool.d/www.conf
# fi

/usr/sbin/php-fpm7.3 -F
