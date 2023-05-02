#!/bin/bash

read -p "URL: " url
read -p "What must the song be saved as (without exetension): " filename
youtube-dl --verbose -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' --output 'video.mp4' $url
ffmpeg -i 'video.mp4' -vn -acodec libmp3lame -ac 2 -ab 192k -ar 48000 "$filename.mp3"
rm 'video.mp4'
