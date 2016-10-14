#! /usr/bin/env bash

paths=$(inkscape --query-all $1 | grep path | sed -e "s/,.*//" | xargs)
# paths="path3000 path3307 path3310 path3313 path3316"
# paths="path324 path327 path330 path333 path17"
# paths="patch_3 patch_4 patch_5 patch_6 line2d_1"
command1="--verb org.ekips.filter.addnodes.noprefs"
command2="--verb org.ekips.filter.radiusrand.noprefs"
execstr="inkscape"
for item in $paths; do
    execstr="$execstr --select $item $command1 --select $item $command2"
done
execstr="$execstr --verb FileSave --verb FileClose $1"
$execstr
