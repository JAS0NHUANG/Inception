FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

COPY ./conf/default /etc/nginx/sites-enabled/default

RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
	-keyout /etc/ssl/private/jahuang.key \
	-out /etc/ssl/certs/jahuang.crt \
	-subj "/C=FR/ST=75/L=Paris/O=42/CN=jahuang.42.fr";

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
