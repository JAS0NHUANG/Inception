# inception

Container + Container + Container  
MariaDB + WP/PHP + Nginx

## Steps:
1. setup VM
	- install apps:  
	curl, vim, git, ca-certificates, gnupg, lsb-release, make  
	- install docker & docker-compose  
	https://docs.docker.com/engine/install/ubuntu  
	- create the folder structure  

2. Write Makefile
It's like a cheat sheet of [docker-compose](#docker-compose) commands. [Docker Compose Cheat Sheet](https://cheatography.com/gauravpandey44/cheat-sheets/docker-compose/)  

3. Writ docker-compose.yml
[docker-compose](#docker-compose)

4. Create nginx -> mariadb -> wordpress
[Dockerfiles](#dockerfile)

5. `make`


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
### about ".env"
[Docker - environment variables](https://docs.docker.com/compose/environment-variables/)
> You can set default values for environment variables using a .env file, which Compose automatically looks for in project directory (parent 
Add key=value pairs in the ".env" file. And can be used as ${key} in the docker-compose.yml file.

## Dockerfile

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

## MySQL

### SQL queries
`SHOW DATABASES;`
`SHOW TABLES;`

## PHP

## Nginx

## Wordpress

## Issues
- 403 forbiden
- 502 bad gateway
https://armno.medium.com/til-fixing-http-502-bad-gateway-error-nginx-wordpress-a591be919adf

- How to Fix MySQL Error: Access Denied for User ‘root’@’localhost’

- Error Establishing a Database(wordpress)
https://www.dreamhost.com/blog/how-to-fix-wordpress-database-connection-error/

# References:
42 students' github repo with good README:
- github.com/codesshaman/inception
- github.com/twagger/inception
- github.com/llescure/


