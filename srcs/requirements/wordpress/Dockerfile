FROM debian:buster

RUN apt-get update && \
    apt install -y wget


# COPY php.ini /use/local/etc/php


RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
    # php wp-cli.phar --info && \
    # chmod +x wp-cli.phar && \
    # mv wp-cli.phar /usr/local/bin/wp && \
    # rm /usr/local/etc/php/php.ini-development && \
    # rm /usr/local/etc/php/php.ini-production

