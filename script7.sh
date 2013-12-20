#!/bin/bash
if test `grep -c "${1} :" annuaire.txt` != 0
then
	echo Il est dans la liste.
else
	echo Il n est pas dans la liste.
fi
