#!/bin/bash
if [ ! "$USER" == "root" ]; then
    echo "Use this script as root."
    exit
fi

# get baposter style file
wget http://www.brian-amberg.de/uni/poster/baposter/baposter.cls
# move to destination
mkdir -p /usr/share/texlive/texmf-dist/tex/latex/baposter
mv baposter.cls /usr/share/texlive/texmf-dist/tex/latex/baposter/
# update database
mktexlsr
echo "done installing latex baposter"

