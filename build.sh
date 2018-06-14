#!/bin/sh

image_name=alpine_croutons
docker build -t $image_name .

docker run --rm $image_name sh -c "rm -f /.dockerenv; tar cfz - -C / -V $image_name --one-file-system ." > out/$image_name.tar.gz
docker rmi -f $image_name
