docker volume ls

docker volume create mongovolume

docker container create \
--name mongodata \
--publish 27018:27017 \
--mount "type=volume,source=mongovolume,destination=/data/db" \
--env MONGO_INITDB_ROOT_USERNAME=angga \
--env MONGO_INITDB_ROOT_PASSWORD=anggaari \
mongo:latest

docker volume rm mongovolume