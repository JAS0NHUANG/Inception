NAME	=	Inception

$(NAME):
			docker-compose -f ./srcs/docker-compose.yml up -d --build

all:		$(NAME)
