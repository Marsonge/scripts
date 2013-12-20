#!/bin/bash
if ! test -e ~/poubelle
then
	mkdir ~/poubelle
fi
while [ ${1:-0}  = "-c" ] || [ ${1:-0}  = "-e" ] || [ ${1:-0} = "-h" ]
do
if test ${1:-0} = "-c"
then
	du ~/poubelle
	shift
fi
if test ${1:-0} = "-e"
then
	for i in `ls ~/poubelle`
	do
			rm -i ~/poubelle/${i}
	done
	shift
fi
if test ${1:-0} = "-h"
then
	echo TRASH
	echo [PATH]/trash.sh [-c] [-e] [-h] [filename]
	echo -c : Shows the size of your trash folder
	echo "-e : Empties your trash folder"
	echo -h : Shows help
	shift
fi
done
while ! test -z $1
do 
mv $1 ~/poubelle/$1
shift
done
