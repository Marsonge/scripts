#!/bin/bash
case $1 in
[zZ]ero)
	echo Zero.
	;;
[uU]n)
	echo One.
	;;
[dD]eux)
	echo Two.
	;;
[tT]rois)
	echo Three.
	;;
[qQ]uatre)
	echo Four.
	;;
[cC]inq)
	echo Five.
	;;
*)
	echo Erreur.
esac
