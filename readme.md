# docker installation follow this link instruction
https://docs.docker.com/install/linux/docker-ce/ubuntu/

Docker is a platform for developers and sysadmins to develop, deploy, and run applications with containers.

# see docker client version
docker --version

# show client and server docker version
docker info

# test docker installation by run hello-world test image
docker run hello-world

# show all downloaded and installed docker image (list, remove)
docker image ls
docker image rm [IMAGE]

# show all docker container wether running or not and show its proccess (running, all, all in quiet mode)
docker container ls
docker container ls --all

# --------------------------------------------------------------------------------
# Dockerfile is a docker configuration that define the image and commands
# find image repository in https://hub.docker.com 
# create file by https://docs.docker.com/get-started/part2/#dockerfile
# DOCKER COMMANDS

# build the image (or download it first)
docker build -t [YOUR_REPO_NAME] .

# run docker image and enter the repository
docker run -it [YOUR_REPO_NAME]

# run docker container in background
docker run -it -d [YOUR_REPO_NAME]

# show docker proccess
docker ps

# enter docker container 
sudo docker exec -it [CONTAINER_ID] bash

# run docker container with port forwarding port
docker run -it -p [PORT_HOST]:[PORT_CONTAINER] [CONTAINER_NAME]

# run docker and mount volume host to container so the code can be updated real time
sudo docker run -it -p [PORT_HOST]:[PORT_CONTAINER] -v [PATH_HOST]:[PATH_CONTAINER] [CONTAINER_NAME]

# stop docker container
docker stop [CONTAINER_ID]

# stop the docker container
docker stop [CONTAINER_ID]


# docker composer combine services
docker-compose --version

# run docker compose container
docker-compose up 

# remove docker compose container
docker-compose down 

# build before run docker composer service
docker-compose up --build

# --------------------------------------------------------------------------------
# DOCKER ONLINE REPOSITORY

# Log in this CLI session using your Docker credentials
docker login

# Tag <image> for upload to registry
docker tag <image> username/repository:tag  

# Upload tagged image to registry
docker push username/repository:tag  

# Run image from a registry          
docker run username/repository:tag  

# ---------------------------------------------------------------------------------
# Remove dangling image
docker rmi $(docker images -f "dangling=true" -q)                 
