#!/bin/bash
if test -e $1 && test -d $1 && [ $# = 1 ] 
then
for i in `ls $1`
do 
	echo a$i
done
else
	echo Le dossier n existe pas lol
fi
