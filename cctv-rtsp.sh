#!/bin/bash
VIDSOURCE="rtsp://192.168.100.254:7447/5f97b841848ef75490fd9824_1"
AUDIO_OPTS="-c:a aac -b:a 160000 -ac 2"
VIDEO_OPTS="-s 854x480 -c:v libx264 -b:v 2048000"
OUTPUT_HLS="-hls_time 6 -hls_list_size 6 -hls_wrap 6"
ffmpeg -rtsp_transport tcp -v verbose -i "$VIDSOURCE" -y $AUDIO_OPTS $VIDEO_OPTS $OUTPUT_HLS /var/www/html/live/namacctv.m3u8
