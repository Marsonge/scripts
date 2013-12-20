#!/bin/bash
i=1
while test $i -lt 6
do
	touch $1/fic${i}.txt
	i=$((i+1))
done

