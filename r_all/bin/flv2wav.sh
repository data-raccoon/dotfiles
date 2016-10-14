#!/bin/bash
ffmpeg -i "$1" "${1/.flv/.wav}"
