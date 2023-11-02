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
	CURL=$(curl -s -I -L ${line} | tr -d "\r" ) #obtenir les headers
	HTTPCODE=$(echo "$CURL" | grep "^HTTP" | egrep -o "[[:digit:]]{3}" | tail -n 1)
	ENCODING=$(echo "$CURL" | grep "^content-type:" | egrep -o "charset=[^;]*" | cut -f 2 -d =)
	echo -e "$N\t$HTTPCODE\t${line}\t$ENCODING";
	N=$(expr $N + 1)
done < "$FILE_PATH"


