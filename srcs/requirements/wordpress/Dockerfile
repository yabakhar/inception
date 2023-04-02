FROM debian:buster


RUN apt-get update && apt-get install -y wget && apt-get install -y php php-mysql php-fpm  php-curl mariadb-client
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp 


COPY ./conf/config.sh .

RUN chmod +x ./config.sh 

CMD ["./config.sh"]