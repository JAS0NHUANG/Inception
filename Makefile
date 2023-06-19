YML	=	srcs/docker-compose.yml

all: 
	mkdir -p /home/jahuang/data/wordpress
	mkdir -p /home/jahuang/data/mariadb
	docker compose -f $(YML) up -d --build

up:
	docker compose -f $(YML) up

down:
	docker compose -f $(YML) down

re: fclean all

clean:
	docker compose -f $(YML) down --rmi all -v

fclean:	clean
	@-sudo rm -rf /home/jahuang/data/wordpress
	@-sudo rm -rf /home/jahuang/data/mariadb

.PHONY: all up down re clean fclean
