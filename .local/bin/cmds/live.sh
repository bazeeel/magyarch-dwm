#!/bin/sh


ffmpeg -f alsa -i default -f x11grab -framerate 30 -video_size 1920x1080 \
-i :0.0+0,0 -c:v libx264 -preset ultrafast -b:v 6984k -maxrate 6984k -bufsize 3000k \
-pix_fmt yuv420p -g 60 -c:a aac -b:a 192k -ar 44100 \
-f flv rtmp://live-vie.twitch.tv/app/ide a key
