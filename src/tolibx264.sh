#!/bin/bash

for filename in $1/*.mp4; do
	echo $filename
    ffmpeg -i $filename -vcodec libx264 -pix_fmt yuv420p ./outputs/${filename:7}
done
