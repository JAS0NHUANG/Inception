FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

COPY ./tools/db_init.sql ./

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN service mysql start && mysql < ./db_init.sql ;

EXPOSE 3306

CMD ["mysqld"]
