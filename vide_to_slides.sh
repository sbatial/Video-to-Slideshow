#!/bin/bash

# fetch rss feed
curl -s "https://www.youtube.com/feeds/videos.xml?channel_id=UCOY3VWW4NGQAue_rqTBtdhA" >> newest_videos.tmp

# Extract the video_Url from the rss feed
video_Url=$(cat newest_videos.tmp | grep -iF media:content | head -n1 | awk -F'"' '{ print $2 }')

# download the video
youtube-dl "$video_Url" -o 'newest_video.mp4' -f mp4

# split the video in frames
mkdir frames
ffmpeg -i newest_video.mp4 -r 2 frames/%05d.bmp

# create the presentation
ls frames/ | awk '{ print "![](./frames/"$0")\n" }' >> pres.tmp

# create the powerpoint presentation
# pandoc -s pres.tmp -o video_slides.pptx
# create the reveal.js presentation
pandoc -s pres.tmp -t revealjs -o video_slides.html

# clean the temporary files
rm -rf *.tmp newest_video.mp4 video_slides.txt frames

