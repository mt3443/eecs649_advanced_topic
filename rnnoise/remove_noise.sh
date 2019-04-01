#!/bin/sh
sox $1 -t sw -r 48000 -c 1 input.pcm
./examples/rnnoise_demo input.pcm output.pcm
sox -t raw -r 48000 -e signed -b 16 -c 1 output.pcm -r 48000 $2
rm input.pcm output.pcm
