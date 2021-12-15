#!/bin/bash

v1=${1}
start=${2}
range=${3}
speed=${4}
echo "Video 1 : ${v1} ${start} ${range} ${speed}"

sh video_split_speed_up.sh ${v1} ${start} ${range} ${speed}

v2=${5}
start2=${6}
range2=${7}
speed2=${8}

sh video_split_speed_up.sh ${v2} ${start2} ${range2} ${speed2}

result_file_name=${9}
scale=${10}

sh video_merge.sh x${speed}_range_${v1} x${speed2}_range_${v2}
rm -f x${speed}_range_${v1}
rm -f x${speed2}_range_${v2}

sh video_scale.sh merge.mp4 ${result_file_name} ${scale}
rm -f merge.mp4