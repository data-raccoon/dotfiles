#!/bin/bash
for file in *pdf; do sed -i 's/\/Group.*R//g' $file; done
