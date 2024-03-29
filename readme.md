## Docker installation follow this link instruction
https://docs.docker.com/install/linux/docker-ce/ubuntu
Docker is a platform for developers and sysadmins to develop, deploy, and run applications with containers.

### Show docker client version
`docker --version`\
`docker version`

### Show client and server docker version
`docker info`

### Test docker by running hello-world test image
`docker run hello-world` / `docker container run hello-world`

## Images
### Show all downloaded and installed docker image
`docker image ls`

### Pull / download image
`docker image pull [IMAGE]`

### Remove images
`docker image rm [IMAGE]`

## Containers
### Show all docker container whether running or not and show its process (running, all, all in quiet mode)
`docker container ls`\
`docker container ls --all`

### Create Container
`docker container create --name [NAME] [IMAGE:TAG]`

### Start Container
`docker container start [NAME/ID]`

### Stop Container
`docker container stop [NAME/ID]`

### Remove docker container
`docker container rm [NAME/ID]`

### Remove stopped container
`docker container prune`

--------------------------------------------------------------------------------
Dockerfile is a docker configuration that define the image and commands find image repository in https://hub.docker.com, 
create file by https://docs.docker.com/get-started/part2/#dockerfile

## DOCKER COMMANDS

### Download the image to cache
`docker image pull [YOUR_REPO_NAME]`

### Build the image (or download it first)
`docker image build -t [YOUR_REPO_NAME] .`\
`docker image build --tag=friendlyhello:v1.2 .`

### Capture container to image
`docker commit -c 'CMD ["redis-server"]' [CONTAINER ID]`

### Create and start the container (request logs to our terminal)
`docker container create [YOUR_REPO_NAME]`\
`docker container start -a [YOUR_REPO_NAME]`

### Run docker image and enter the repository and override command
`docker container run -it [YOUR_REPO_NAME]`\
`docker container run [YOUR_REPO_NAME] [COMMAND]`

### Run docker container in background (detach) and remove the container when stopped
`docker container run -it -d --rm [YOUR_REPO_NAME]`

### Enter docker container and run the app (command)
`docker exec -it [CONTAINER_ID] bash`

### Run docker container with port forwarding port (publish/port)
`docker run -it -p [PORT_HOST]:[PORT_CONTAINER] -n [CUSTOM_NAME] [CONTAINER_NAME]`

### Run docker and mount volume host to container so the code can be updated real time
`docker container run -it -p [PORT_HOST]:[PORT_CONTAINER] -v [PATH_HOST]:[PATH_CONTAINER] [CONTAINER_NAME]`\
`docker container run -d --name simple-nginx -p 8080:80 -v $(pwd):/usr/share/nginx/html nginx`

### Run docker and bookmark path inside container (don't override by mounted volume outside the container)
`docker container run -v app/node_modules -v $(pwd):/usr/app`

### Stop docker container
`docker stop [CONTAINER_ID]`

### Get logs from container
`docker logs [CONTAINER_ID]`

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
## DOCKER STACK

### Init node swarm manager
`docker swarm init`

### List stacks or apps
`docker stack ls`

### Run the specified Compose file
`docker stack deploy -c <composefile> <appname>`

### List running services associated with an app
`docker service ls`

### List tasks associated with an app
`docker service ps <service>`

### Inspect task or container
`docker inspect <task or container>`

### List container IDs
`docker container ls -q`

### Tear down an application                            
`docker stack rm <appname>`

### Take down a single node swarm from the manager                    
`docker swarm leave --force`

--------------------------------------------------------------------------------
## DOCKER MACHINE

### Create a VM (Mac, Win7, Linux)
`docker-machine create --driver virtualbox myvm1`

### View basic information about your node
`docker-machine env myvm1`

### List the nodes in your swarm
`docker-machine ssh myvm1 "docker node ls"`

### Inspect a node
`docker-machine ssh myvm1 "docker node inspect <node ID>"`

### View join token
`docker-machine ssh myvm1 "docker swarm join-token -q worker"`

### Open an SSH session with the VM; type "exit" to end
`docker-machine ssh myvm1`

### View nodes in swarm (while logged on to manager)
`docker node ls`

### Make the worker leave the swarm
`docker-machine ssh myvm2 "docker swarm leave"`

### Make master leave, kill swarm
`docker-machine ssh myvm1 "docker swarm leave -f"`

### list VMs, asterisk shows which VM this shell is talking to
`docker-machine ls` 

### Start a VM that is currently not running
`docker-machine start myvm1`

### show environment variables and command for myvm1
`docker-machine env myvm1`

### Mac commands to connect shell to myvm1
`eval $(docker-machine env myvm1)`

### Deploy an app; command shell must be set to talk to manager (myvm1), uses local Compose file
`docker stack deploy -c <file> <app>`

### Copy file to node's home dir (only required if you use ssh to connect to manager and deploy the app)
`docker-machine scp docker-compose.yml myvm1:~`

### Deploy an app using ssh (you must have first copied Compose the file to myvm1)
`docker-machine ssh myvm1 "docker stack deploy -c <file> <app>"`

### Disconnect shell from VMs, use native docker
`eval $(docker-machine env -u)`

### Stop all running VMs
`docker-machine stop $(docker-machine ls -q)`

### Delete all VMs and their disk images
`docker-machine rm $(docker-machine ls -q)`


--------------------------------------------------------------------------------
## DOCKER ONLINE REPOSITORY

### Log in this CLI session using your Docker credentials
`docker login`

### Tag <image> for the upload to registry
`docker tag <image> username/repository:tag` 

### Upload tagged image to registry
`docker push username/repository:tag`

### Run image from a registry          
`docker run username/repository:tag`

---------------------------------------------------------------------------------
### Remove dangling image
`docker image prune`
`docker rmi $(docker images -f "dangling=true" -q)`
