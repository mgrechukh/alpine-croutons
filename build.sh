#!/bin/sh

if [ -z "$1" ]; then
	image_name=alpine_croutons
else
	image_name=$1
fi

docker build -t $image_name .

docker run --rm $image_name sh -c "rm -f /.dockerenv; tar cfj - -C / -V crouton:bootstrap.$image_name --one-file-system ." > out/$image_name.tar.bz2
docker rmi -f $image_name
