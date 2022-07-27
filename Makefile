NAME = Inception

$(NAME):
			mkdir -p /goinfre/jahuang/data/db_data
			mkdir -p /goinfre/jahuang/data/wp_data
			docker-compose -f ./srcs/docker-compose.yml up -d --build

all:  $(NAME)

# **************************************************************************** #
#  Manipulations                                                          #
# **************************************************************************** #

build:
			docker-compose build

up:
			docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
			docker-compose -f ./srcs/docker-compose.yml down --rmi all

fclean:		down
			docker rmi -f $$(docker images -aq)

# **************************************************************************** #
#  Inspections                                                            #
# **************************************************************************** #
list:
			docker-compose -f ./srcs/docker-compose.yml ls

logs:
			docker-compose -f ./srcs/docker-compose.yml logs
