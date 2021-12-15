#!/bin/bash


v1=${1}
echo "input video is : ${v1}"
start=${2}
echo "input start time is : ${start}"
range=${3}
echo "input time range is : ${range}"

ffmpeg -i ${v1} -ss ${start} -t ${range} range_${v1}