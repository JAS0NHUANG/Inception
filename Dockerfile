# The base system of the container
FROM debian:buster

# Running commands
# install mariadb
RUN apt-get update && apt-get -y install mariadb-server mariadb-client

# Make /var/run/mysqld dir
RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld

# Expose the db port
EXPOSE 3306

# CMD
CMD	["mysqld"]
