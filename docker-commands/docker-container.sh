docker container ls -a

docker container ls

docker container create --name redis1 redis:latest

docker container create --name redis2 redis:latest

docker container start redis1
docker container start redis2

docker container stop redis1
docker container stop redis2

docker container rm redis1
docker container rm redis2

docker container inspect redis:latest