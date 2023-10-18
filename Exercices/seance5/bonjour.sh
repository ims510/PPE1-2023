#!/bin/bash
echo "le premier argument est: ($1)"

if [ -n  "$1" ]
then 
	echo "le premier argument n'est pas vide"
	if [[ $1 =~ bon(jour|soir) ]]
		then
			echo "salut"
	fi
else 
	echo "le premier argument est vide"
fi

echo "fin de programme"