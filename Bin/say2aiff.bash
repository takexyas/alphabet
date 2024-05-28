#!/bin/bash

LIST=(
#	a b c d e f g h i j k l m n o p q r s t u v w x y z
#	0 1 2 3 4 5 6 7 8 9
#	"Backspace" "Tab" "Enter" "Escape"
#	#   ! " # $ % & ' ( ) * + , - . /
#	"space" "exclamation_mark" "quotation_mark" "number_sign"
#	"dollar_sign" "percent_sign" "ampersand" "apostrophe"
#	"left_parenthesis" "right_parenthesis" "asterisk" "plus_sign"
#	"comma" "hyphen" "dot" "slash"
#	# : ; < = > ? @
#	"colon" "semicolon" "less_than_sign" "equals_sign"
#	"greater_than_sign" "question_mark" "at"
#	# [ \ ] ^ _ `
#	"left_square_bracket" "backslash" "right_square_bracket" "circumflex"
#	"underscore" "grave_accent"
#	# { | } ~
#	"left_curly_bracket" "vertical_line" "right_curly_bracket" "tilde"
#	# ¥
#	"Yen" "Enter"
#	"Ctrl" "Alt" "Meta" "Shift" "CapsLock"
#	"ArrowLeft" "ArrowRight" "ArrowUp" "ArrowDown"
#	"PauseBreak" "PageUp" "PageDown" "Home" "End"
#	"Insert" "Delete" "NumLock" "ScrollLock"
#	# function
#	"F1" "F2" "F3" "F4" "F5" "F6" "F7" "F8" "F9" "F10" "F11" "F12"
#	# mouse
#	"click" "dblclick" "auxclick"
#	"touchstart" "touchend" "touchmove" "touchcancel"
#	# Others
#	"Minus" "Equal" "BracketLeft" "BracketRight"
#	"Semicolon" "Quote" "Backslash"
#	"Comma" "Period" "Slash"
#	"Dead"
#	"PrintScreen" "Pause" "Break"
#	"Zenkaku" "Hankaku" "Alphanumeric"
#	"NonConvert" "Convert" "Hiragana" "ContextMenu"
#	"KanjiMode" "KanaMode" "Romaji" "Clear"
)
if [ $# -gt 0 ]; then
	LIST=("$@")
fi
#echo ${LIST[@]}
#exit

DST=./aiff
SAY=${HOME}/Bin/sayEnglish.sh

mkdir -p ${DST}

for WORD in ${LIST[@]}; do
	if [ ! -f ${DST}/${WORD}.aiff ]; then
		echo ${WORD}
		${SAY} ${WORD} -o ${DST}/${WORD}
	fi
done

