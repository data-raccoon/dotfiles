#!/usr/bin/env bash

# deploy directory structure

cd ~

ln -sf /mnt/sec-data/pictures pictures
ln -sf /mnt/sec-data/pictures Bilder
ln -sf /mnt/sec-data/doc doc
ln -sf /mnt/sec-data/music music
ln -sf /mnt/sec-data/music Musik
ln -sf /mnt/sec-data/projects-archive projects-archive
ln -sf /mnt/sec-data/rec-raw rec-raw
ln -sf /mnt/sec-data/rec-raw Videos
ln -sf /mnt/sec-data/rec-rdy rec-rdy
ln -sf /mnt/sec-data/software software

# create directories
mkdir -p public
chmod a+rwx public

mkdir -p projects

# internal links
ln -sf public Öffentlich
