FROM debian:buster

RUN apt-get update \
    && apt-get install -y nginx openssl 
RUN openssl req -x509 -newkey rsa:2048 -nodes -keyout /server.key -out /server.crt -subj "/C=MA/"

# COPY ./conf/default /etc/nginx/sites-available/

# RUN rm -rf var/www/

CMD ["nginx", "-g", "daemon off;"]
