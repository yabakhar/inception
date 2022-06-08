FROM debian:buster

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install -y php  php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-cli php php-ldap php-zip php-curl

RUN wget http://wordpress.org/latest.tar.gz \
    && tar -xzvf latest.tar.gz && rm -rf latest.tar.gz \
    && cp ./wordpress/wp-config-sample.php ./wordpress/wp-config.php \
    && apt-get autoclean && apt-get autoremove

RUN mkdir -p /var/www/wordpress
RUN cp -r /wordpress/* /var/www/wordpress
RUN chown -R www-data:www-data /var/www/wordpress

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar  && \
    php wp-cli.phar --info  && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp 
