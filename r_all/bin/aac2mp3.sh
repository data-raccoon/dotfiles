#!/bin/bash
avconv -i "$1" -b 192k "${1/.aac/.mp3}"
