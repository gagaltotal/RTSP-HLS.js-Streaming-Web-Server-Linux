#!/bin/bash

#Code By Mr.GhostGTR666 & Mr.Gagaltotal666 | gagaltotal666.my.id | gagaltotal.github.io |

#link url RTSP
cctv1="rtsp://ayang:liatayang@192.168.111.104:554/Streaming/channels/101"
cctv2="rtsp://ayang:liatayang@192.168.111.109:554/Streaming/channels/101"
cctv3="rtsp://192.168.100.254:7447/5e464590848e2cc5ec3e5fef_1"
cctv4="rtsp://192.168.100.254:7447/5f97b841848ef75490fd9824_1"
cctv5="rtsp://192.168.100.254:7447/5fe04797848e7febe162eb1f_1"
cctv6="rtsp://192.168.100.254:7447/5e464491848e2cc5ec3e5d4c_1"
cctv7="rtsp://192.168.100.254:7447/5fb38964848e9d5f114f2d4a_1"

#setting audio dan resolution
AUDIO_OPTS="-c:a aac -b:a 160000 -ac 2"
VIDEO_OPTS="-s 854x480 -c:v libx264 -b:v 2048000"
OUTPUT_HLS="-hls_time 6 -hls_list_size 6 -hls_wrap 6"

#convert RTSP to hls m3u8
ffmpeg -rtsp_transport tcp -v verbose -i "$cctv1" -i "$cctv2" -i "$cctv3" -i "$cctv4" -i "$cctv5" -i "$cctv6" -i "$cctv7" \
				        -map 0 -y $AUDIO_OPTS $VIDEO_OPTS $OUTPUT_HLS /var/www/html/live/namacctv1.m3u8 \
                                        -map 1 -y $AUDIO_OPTS $VIDEO_OPTS $OUTPUT_HLS /var/www/html/live/namacctv2.m3u8 \
 					-map 2 -y $AUDIO_OPTS $VIDEO_OPTS $OUTPUT_HLS /var/www/html/live/namacctv3.m3u8 \
					-map 3 -y $AUDIO_OPTS $VIDEO_OPTS $OUTPUT_HLS /var/www/html/live/namacctv4.m3u8 \
					-map 4 -y $AUDIO_OPTS $VIDEO_OPTS $OUTPUT_HLS /var/www/html/live/namacctv5.m3u8 \
					-map 5 -y $AUDIO_OPTS $VIDEO_OPTS $OUTPUT_HLS /var/www/html/live/namacctv6.m3u8 \
					-map 6 -y $AUDIO_OPTS $VIDEO_OPTS $OUTPUT_HLS /var/www/html/live/namacctv7.m3u8
