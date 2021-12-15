#!/bin/bash

v1=${1}
result=${2}
scale=${3}

ffmpeg -i ${v1} -vf "scale=${scale}" ${result}