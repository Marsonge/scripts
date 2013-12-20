#!/bin/bash
if [ $# = 3 ] && test -e $3
then
	for i in `ls $3`
	do
		if test ${i##*.} = $1
		then
			mv ${i} ${i%%*.}.$2
		fi
	done
else
	echo Erreur. Le repertoire n existe pas ou vous n avez pas entre 3 parametres.
fi
