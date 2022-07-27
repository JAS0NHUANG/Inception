# The base system of the container
FROM debian:buster

# Running commands
RUN apt-get update && \
	apt-get -y install \
	php-fpm \
	php-cgi \
	php-common \
	php-opcache \
	php-mysqli \
	# mysql vs mysqli (the "i" stands for "improved")
	php-cli \
	php-gd \
	php-json \
	php-dom \
	php-mbstring \
	php-xml \
	php-zip \
	wget \
	openssl \
	vim

RUN wget https://wordpress.org/wordpress-6.0.1.tar.gz \
	&& tar -xzvf wordpress-6.0.1.tar.gz

EXPOSE 9000

CMD ["php-fpm7.3", "-F"]
