#!/bin/bash
avconv -i "$1" -b 192k "${1/.mp4/.mp3}"
