docker container create --name redis1 redis:latest

docker container start redis1

docker container logs redis1

docker container logs -f redis1