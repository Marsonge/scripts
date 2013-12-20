#!/bin/bash
if ! test -e ~/data
then
	mkdir ~/data
fi
if ! test -e ~/bin
then
	mkdir ~/bin
fi
for i in `ls`
do
	var=`du $i`
	key='${var:0:1}'
	echo $key
	if test key = 0
	then
		rm -i $i
	elif test ${i##*.} = "txt"
	then
		mv $i ~/data/$i
	elif test ${i##*.} = "sh"
	then
		mv $i ~/bin/$i
		chmod +x ~/bin/$i
	fi

done
ls
