#!/bin/bash

v1=${1}
start=${2}
range=${3}
speed=${4}

sh video_split_range.sh ${v1} ${start} ${range}
sh video_speed_up.sh range_${v1} ${speed}
rm -f range_${v1}