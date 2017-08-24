#!/bin/bash
set -v
set -e
JQ=/usr/local/bin/jq
DOWNLOAD_PATH='/tmp/'
API_KEY='DEMO_KEY'
NASA_URL="https://api.nasa.gov/planetary/apod?api_key=${API_KEY}"
NASA_IMAGE_HD=$(curl --retry 10 --retry-delay 20 "${NASA_URL}" | ${JQ} --raw-output '.hdurl')

curl --retry 10 --retry-delay 20 "${NASA_URL}"

DOWNLOAD_PATH="${DOWNLOAD_PATH}${NASA_IMAGE_HD##*/}"
echo ${NASA_IMAGE_HD} 
curl "${NASA_IMAGE_HD}" -o ${DOWNLOAD_PATH}

osascript -e 'tell application "System Events" to set picture of every desktop to ("'"${DOWNLOAD_PATH}"'" as POSIX file as alias)'
rm ${DOWNLOAD_PATH}
