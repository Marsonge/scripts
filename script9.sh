#!/bin/bash
if test -e $1 && test -x $1 
then
	cd $1
	touch toto
else
	echo Erreur
fi
