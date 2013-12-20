#!/bin/bash
for i in `ls /usr/include`
do
	if test -f /usr/include/$i
	then
		if test `wc -l < /usr/include/$i` -gt 99
		then
			if test ${i##*.} = "h"
			then
				echo $i
			fi
		fi
	fi
done
