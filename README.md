# Inception

Container + Container + Container  
MariaDB + WP/PHP + Nginx

## Steps:

1. Create the mariadb Dockerfile.  
	Learn about the [Dockerfile](#dockerfile) and [docker commands](#docker-commands)
2. Docker compose  
	Create the [docker-compose.yml](#The-YAML-file) file and test with some [docker compose commands](#docker-compose-commands) (with only mariadb container)
3. Write a Makefile   
	Put docker-compose commands inside. It's sort-of a cheat sheet. [Docker Compose Cheat Sheet](https://cheatography.com/gauravpandey44/cheat-sheets/docker-compose/)  

~~ Now we can sart a simple docker-compose app with the makefile.

4. 


## dockerfile

1. `FROM` - Chose a base image
```
FROM debian:bullseye // latest at 05/07/2022
FROM alpine:3.16 // latest at 05/07/2022
```

2. `LABEL` - give it a lable (optional)
- key=value pair
- The OCI:
	[Open Container Initiative](opencontainers.org)
	OCI Image Format Specification
	[Annotations](https://github.com/opencontainers/image-spec/blob/main/annotations.md)
	Some often used labels:
		- org.opencontainers.image.authors
		- org.opencontainers.image.source
		- org.opencontainers.image.version

3. `WORKDIR` - the working dir in the container

4. `RUN` - run some command
RUN apt update && apt upgrade -y && apt install -y install mariadb-server

5. `EXPOSE` - expose the port

6. `CMD` - the command to exec in the container

## Docker

### docker commands

#### modification
build : build a docker image  
	- `docker build .`
	- `docker build -f [path to dockerfile]`
	- `docker build -t [TAGNAME] -f [path to Dockerfile] .`

create : create a "container" from an image  
	- `docker create [image name]`

start : start a container  
	- `docker start [container id]`

run : create a container from the image and run it(short hand for create + start)  
	- `docker run -d --name [name] -e AUTOINDEX=[off/on] -p [port:port] -p [port:port] [image name]`

exec : execute a program inside a container  
	- `docker exec -it [name of container] [program to exec]`

rm : remove an image or container  
	- `docker rmi -f [image name]`
	- `docker rm -f [container name]`

#### inspection

`docker images` : check built images

`docker ps` : check running containers



## docker-compose

### the YAML file

- build section in .yml file
	https://docs.docker.com/compose/compose-file/build/
	options:
		- context
		- args
		- labels

### docker compose commands
	- `docker-compose -f [yml file] up -d --build`

	[Docker Compose Cheat Sheet](https://cheatography.com/gauravpandey44/cheat-sheets/docker-compose/)
	What we do in the makefile is more-or-less copy the conent of the cheat sheet into it.


## MySQL

### SQL queries
`SHOW DATABASES;`
`SHOW TABLES;`

## PHP

## Nginx

## Wordpress


