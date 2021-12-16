docker image pull mongo:latest

docker container create --name mongo1 --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=angga --env MONGO_INITDB_ROOT_PASSWORD=anggaari mongo:latest