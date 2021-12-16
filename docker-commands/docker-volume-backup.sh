docker container stop mongovolume

docker container create \
--name nginxbackup \
--mount "type=bind,source=/media/angga/Data2/Sandbox/vm/docker/docker-commands/backup,destination=/backup" \
--mount "type=volume,source=mongovolume,destination=/data" \
nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume

docker image pull ubuntu:latest

docker container stop mongovolume

docker container run --rm --name ubuntubackup \
--mount "type=bind,source=/media/angga/Data2/Sandbox/vm/docker/docker-commands/backup,destination=/backup" \
--mount "type=volume,source=mongovolume,destination=/data" \
ubuntu:latest tar cvf /backup/backup-again.tar.gz /data

docker container start mongovolume