#Inception

Container + Container + Container

## Steps:

- 1. Create the mariadb Dockerfile.
	Learn about the Dockerfile and docker commands
- 2. Create the docker-compose.yml file
	Test with some docker compose commands (with only mariadb container)
- 3.  

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




## docker commands
`docker build` : build a docker image
	- `docker build .`
	- `docker build -f [path to dockerfile]`
	- `docker build -t [TAGNAME] -f [path to Dockerfile] .`

`docker images` : check built images

`docker exec` : execute a program inside a container
	- `docker exec -it [name of container] [program to exec]`

`docker run` : run the container
	- docker run -d --name [name] -e AUTOINDEX=[off/on] -p [port:port] -p [port:port] [container name]`

`docker rm` : remove an image or container
	- `docker rmi -f [image name]`
	- `docker rm -f [container name]`

## docker-compose

- build section in .yml file
	https://docs.docker.com/compose/compose-file/build/
	options:
		- context
		- args
		- labels

- docker compose commands:
	- `docker-compose -f [yml file] up -d --build`


## MySQL

### SQL queries
`SHOW DATABASES;`
`SHOW TABLES;`

## PHP

## Nginx

## Wordpress


