#!/bin/bash

v1=${1}
v2=${2}

ffmpeg -i ${v1} -vf "[in] pad=2*iw:ih [left]; movie=${v2} [right];\
                        [left][right] overlay=main_w/2:0 [out]" merge.mp4