docker container create \
--name mongodata \
--publish 27018:27017 \
--mount "type=bind,source=/media/angga/Data/Sandbox/vm/docker/docker-commands/mongo-data,destination=/data/db" \
--env MONGO_INITDB_ROOT_USERNAME=angga \
--env MONGO_INITDB_ROOT_PASSWORD=anggaari \
mongo:latest