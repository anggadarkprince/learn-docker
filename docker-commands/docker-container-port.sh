docker image pull nginx:latest

docker container create --name nginx1 --publish 8080:80 nginx:latest