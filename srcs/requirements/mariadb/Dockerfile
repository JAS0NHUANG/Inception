# The base system of the container
FROM debian:buster

# Running commands
# install mariadb
RUN apt-get update && apt-get -y install mariadb-server mariadb-client

# Make /var/run/mysqld dir
RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld

# Expose the db port
EXPOSE 3306

# copy tools
COPY ./tools/db_init.sql /tmp/
COPY ./tools/script.sh /tmp/

# RUN DB init
RUN chmod 755 /tmp/script.sh
RUN bash /tmp/script.sh

# CMD
CMD mysqld
