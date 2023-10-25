#!/usr/bin/env bash

FILE_PATH=$1

if [ $# -ne 1 ] # verifier si le script a un argument
then
	echo "ce programme demande un argument: le chemin vers le fichier fr.txt" 
		exit
fi

N=1

while read -r line;
do
	#obtenir le code HTTP and store it in a variable 
	HTTPCODE=$(curl -s -I  ${line}| grep "HTTP" | egrep -o "[[:digit:]]{3}")
	echo -e "$N\t$HTTPCODE\t${line}";
	N=$(expr $N + 1)
done < "$FILE_PATH"


#curl -s -I URL | grep "HTTP" | egrep -o "[[:digit:]]{3}"
#-e for tabs between terms in echo, add \t between things