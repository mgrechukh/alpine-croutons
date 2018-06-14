#!/bin/sh

image_name=alpine_croutons
docker build -t $image_name .

docker run --rm $image_name sh -c "rm -f /.dockerenv; tar cfj - -C / -V $image_name --one-file-system ." > $image_name.tar.bz2
docker rmi -f $image_name
