## Docker installation follow this link instruction
https://docs.docker.com/install/linux/docker-ce/ubuntu
Docker is a platform for developers and sysadmins to develop, deploy, and run applications with containers.

### Show docker client version
`docker --version`

### Show client and server docker version
`docker info`

### Test docker installation by run hello-world test image
`docker run hello-world` / `docker container run hello-world`

### Show all downloaded and installed docker image (list, remove)
`docker image ls`
`docker image rm [IMAGE]`

### Show all docker container wether running or not and show its proccess (running, all, all in quiet mode)
`docker container ls`
`docker container ls --all`

## remove docker container, remove stopped container
`docker container rm [CONTAINER]`
`docker container prune`

--------------------------------------------------------------------------------
Dockerfile is a docker configuration that define the image and commands find image repository in https://hub.docker.com, 
create file by https://docs.docker.com/get-started/part2/#dockerfile

## DOCKER COMMANDS

### Build the image (or download it first)
`docker image build -t [YOUR_REPO_NAME] .`

### Run docker image and enter the repository
`docker container run -it [YOUR_REPO_NAME]`

### Run docker container in background (detach) and remove the container when stopped
`docker container run -it -d --rm [YOUR_REPO_NAME]`

### Enter docker container and run the app
`docker exec -it [CONTAINER_ID] bash`

### Run docker container with port forwarding port (publish/port)
`docker run -it -p [PORT_HOST]:[PORT_CONTAINER] -n [CUSTOM_NAME] [CONTAINER_NAME]`

### Run docker and mount volume host to container so the code can be updated real time
`docker container run -it -p [PORT_HOST]:[PORT_CONTAINER] -v [PATH_HOST]:[PATH_CONTAINER] [CONTAINER_NAME]`
`docker container run -d --name simple-nginx -p 8080:80 -v $(pwd):/usr/share/nginx/html nginx`

### Stop docker container
`docker stop [CONTAINER_ID]`

--------------------------------------------------------------------------------
## DOCKER COMPOSE

### Docker compose combine services
`docker-compose --version`

### Run docker compose container
`docker-compose up`

### Remove docker compose container, but leave built image untouched
`docker-compose down` 

## Remove docker built images as well
`docker-compose down --rmi local`

### Build before run docker composer service
`docker-compose up --build`

--------------------------------------------------------------------------------
## DOCKER ONLINE REPOSITORY

### Log in this CLI session using your Docker credentials
`docker login`

### Tag <image> for upload to registry
`docker tag <image> username/repository:tag` 

### Upload tagged image to registry
`docker push username/repository:tag`

### Run image from a registry          
`docker run username/repository:tag`

---------------------------------------------------------------------------------
### Remove dangling image
`docker image prune`
`docker rmi $(docker images -f "dangling=true" -q)`
