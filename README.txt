Usage:

./build.sh myimage

.....

(if image name not specified default alpine_croutons is to be used)

In out/ there will be created myimage.tar.gz

On crosh:

sudo sh -x Downloads/crouton -n vpns -f Downloads/alpine_croutons.tar.gz 

sudo enter-chroot -n vpns -u 0 /bin/sh
