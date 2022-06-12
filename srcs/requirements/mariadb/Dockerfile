FROM debian:buster

RUN apt-get update && apt-get install mariadb-server mariadb-client -y

COPY ./conf/config.sql .
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
RUN service mysql start && mysql -u root < /config.sql

CMD ["mysqld_safe"]