#!/bin/bash

# input : video_1_name, speed

echo "video speed up : x${2}"

v1=${1}
speed=${2}

ffmpeg -i ${v1} -vf "setpts=(1/${speed})*PTS" -an x${speed}_${v1}