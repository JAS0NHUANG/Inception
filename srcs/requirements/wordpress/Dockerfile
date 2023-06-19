FROM	debian:buster

RUN	apt-get update && apt-get -y install php7.3 php-mysqli php-fpm curl

RUN	mkdir -p /var/www/site && mkdir -p /home/srcs

COPY	./conf/wp-config.php /var/www/site

COPY	./tools/wp_init.sh /home/srcs/

RUN	cd /var/www/site ; \
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar ; \
	chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp ; \
	wp core download --allow-root ; 

COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d

EXPOSE	9000

ENTRYPOINT	[ "/home/srcs/wp_init.sh" ]

CMD	["/usr/sbin/php-fpm7.3", "-F"]
