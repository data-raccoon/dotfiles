#!/usr/bin/env bash


# deploy directory structure

cd ~

ln -sf sporz/tools tools
ln -sf sporz/exp exp
ln -sf sporz/posters posters
ln -sf sporz/talks talks

ln -sf alle/bibtex/bonnbib bonnbib

ln -sf /mnt/pappos pappos


# deploy links to binaries

cd ~/bin

ln -sf ../sporz/tools/top-prd-git/sliceofmat/davie.py
ln -sf ../sporz/tools/top-prd-git/sliceofmat/show_2d.py

ln -sf ../sporz/dfg/skripts/collectivize.sh
ln -sf ../sporz/dfg/skripts/subcollectivize.sh
ln -sf ../sporz/dfg/skripts/profile
ln -sf ../sporz/dfg/skripts/replace.sh
ln -sf ../sporz/dfg/skripts/show_temp.py
