#!/bin/bash
if test $1 = "-h"
then
	echo "COMPAR"
	echo "[PATH]/compar.sh [option] [str1] [str2] [str3]"
	echo "OPTIONS"
	echo "-h : Shows help"
	echo "str1, str2, str3 are strings"
	echo "returns 0 if str1=str2=str3,"
	echo "4 if str1!=str2!=str3"
	echo "5 if error"
	echo "and 1, 2, 3 depending to which"
	echo "string differs."
	shift
fi
if test -z $3 || ! test -z $4
then
	exit 5
fi
if test $1 = $2 && test $2 = $3
then
	exit 0
fi
if test $1 != $2 && test $2 != $3 && test $1 != $3
then
	exit 4
fi
if test $1 != $2 && test $2 = $3
then
	exit 1
fi
if test $1 != $2 && test $2 != $3 && test $1 = $3
then
	exit 2
fi
if test $1 = $2 && test $2 != $3
then
	exit 3
fi
