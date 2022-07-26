# The base system of the container
FROM debian:buster

# Running commands
# Install nginx and openssl
RUN apt-get update && \
	apt-get -y install \
		nginx \
		openssl

# Self sign a SSL certification
RUN mkdir /etc/nginx/ssl \
	&& openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout /etc/nginx/ssl/jahuang.key \
    -out /etc/nginx/ssl/jahuang.csr -subj '/C=FR/ST=75/P=Paris/O=42/CN=jahuang'

COPY ./nginx.conf /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
