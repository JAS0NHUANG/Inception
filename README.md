# Inception

Container + Container + Container

## dockerfile

1. `FROM` - Chose a base image
```
FROM debian:bullseye // latest at 05/07/2022
FROM alpine:3.16 // latest at 05/07/2022
```

2. `LABEL` - give it a lable (optional)
- key=value pair

3. `WORKDIR` - the working dir in the container

4. `RUN` - run some command
RUN apt update && apt upgrade -y && apt install -y install mariadb-server

5. `EXPOSE` - expose the port

6. `CMD` - the command to exec in the container


## docker commands
`docker build` : build a docker image
	- `docker build .`
	- `docker build -f "path to dockerfile"`
	- 

`docker images` : check built images

## docker-compose

- build section in .yml file
	https://docs.docker.com/compose/compose-file/build/
	options:
		- context
		- args
		- labels

## MySQL

## PHP

## Nginx

## Wordpress
