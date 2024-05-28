#!/bin/bash

LIST=(
	"あ" "い" "う" "え" "お"
	"か" "き" "く" "け" "こ"
	"さ" "し" "す" "せ" "そ"
	"た" "ち" "つ" "て" "と"
	"な" "に" "ぬ" "ね" "の"
	"は" "ひ" "ふ" "へ" "ほ"
	"ま" "み" "む" "め" "も"
	"や" "ゆ" "よ"
	"ら" "り" "る" "れ" "ろ"
	"わ" "を" "ん"
)
if [ $# -gt 0 ]; then
	LIST=("$@")
fi
#echo ${LIST[@]}
#exit

DST=./aiff
SAY=/usr/bin/say

mkdir -p ${DST}

for WORD in ${LIST[@]}; do
	if [ ! -f ${DST}/${WORD}.aiff ]; then
		echo ${WORD}
		${SAY} ${WORD} -o ${DST}/${WORD}
	fi
done

