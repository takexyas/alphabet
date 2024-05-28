#!/bin/sh

if [ $# -le 0 ]; then
	echo Argument Error: $0 arg...
	exit
fi
TARGET="$@"

DST=./ogg

FFMPEG=/usr/local/bin/ffmpeg
BASENAME=/usr/bin/basename

mkdir -p ${DST}

for file in ${TARGET}; do
	NAME=`${BASENAME} -s '.aiff' ${file}`
	if [ ! -f ${DST}/${NAME}.ogg ]; then
		echo ${NAME}.ogg
		${FFMPEG} -i "${file}" -vn -acodec libvorbis -f ogg "${DST}/${NAME}.ogg"
	fi
done

