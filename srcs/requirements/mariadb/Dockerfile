FROM debian:buster

RUN apt-get update && apt-get install mariadb-server mariadb-client  procps -y 

COPY ./tools/run.sh .
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
ENTRYPOINT [ "sh", "./run.sh" ]

CMD ["mysqld_safe"]