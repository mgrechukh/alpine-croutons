#!/bin/sh

image_name=alpine_croutons
docker build -t $image_name .

container_name=$image_name-save
docker create --name $container_name $image_name

archive_name=$image_name.tar.gz
docker export -o $archive_name $container_name

docker rm $container_name
docker rmi $image_name
