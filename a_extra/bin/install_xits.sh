#!/bin/bash
if [ ! "$USER" == "root" ]; then
    echo "Use this script as root."
    exit
fi

# get font files
git clone https://github.com/khaledhosny/xits-math.git
# move to destination
mkdir -p /usr/local/share/fonts/xits
mv xits-math/xits-*.otf /usr/local/share/fonts/xits
# update database
fc-cache -f
# clean up
rm -rf xits-math
echo "done installing xits fonts"

