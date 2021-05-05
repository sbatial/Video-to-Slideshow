#!/bin/bash

### Variablen
channel_id="UCOY3VWW4NGQAue_rqTBtdhA"
video_Url=""
###

# If no Video URL is given: Get the URL of the last Video
if [[ -z $video_Url ]]; then
    # fetch rss feed
    curl -s "https://www.youtube.com/feeds/videos.xml?channel_id=$channel_id" >> newest_videos.tmp

    # Extract the video_Url from the rss feed
    video_Url=$(cat newest_videos.tmp | grep -iF media:content | head -n1 | awk -F'"' '{ print $2 }')
fi

# download the video
youtube-dl "$video_Url" -o 'newest_video.mp4' -f mp4

# split the video in frames
mkdir frames
ffmpeg -i newest_video.mp4 -r 2 frames/%05d.bmp

# create the presentation
ls frames/ | awk '{ print "![](./frames/"$0")\n" }' >> pres.tmp

# create the powerpoint presentation
pandoc -s pres.tmp -o video_slides.pptx

# clean the temporary files
rm -rf *.tmp newest_video.mp4 video_slides.txt frames

