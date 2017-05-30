#!/bin/bash

H=$(date +%H)

DATE=$(date +"%Y-%m-%d_%H%M")


if(( 23 >= 10#$H && 10#$H <= 5)); then

	raspistill --exposure night -ss 6000000 -o /home/pi/camera/$DATE.jpg
else

	raspistill --exposure auto -o /home/pi/camera/$DATE.jpg
fi
