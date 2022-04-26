#!/bin/bash

# USAGE: ./ogg_titler.sh music_directory
# Function: renames .ogg file 'titles' to the filename, without the .ogg extension.
cd "$1" || exit 1
for file in * ;do
[ -f "$file" ]
	filename=${file%.*}
	fullpath="$1"
vorbiscomment -w "$fullpath$file" -t "TITLE=$filename" -q
done
