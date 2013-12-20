#!/bin/bash
i=5
while test $i -gt 0
do 
	echo ${i}...
	i=$((i-1))
	sleep 1
done
echo Décollage.
