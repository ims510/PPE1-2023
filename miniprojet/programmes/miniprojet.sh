#!/usr/bin/env bash

FILE_PATH_IN=$1
FILE_PATH_OUT=$2

if [ $# -ne 2 ] # verifier si le script a un argument
then
	echo "ce programme demande deux arguments: le chemin vers le fichier fr.txt et un argument pour le chemin vers le fichier html" 
	exit
fi

N=1
echo "<html>" > $FILE_PATH_OUT 
echo "<head>" >> $FILE_PATH_OUT 
echo "<meta charset="UTF-8" />" >> $FILE_PATH_OUT
echo "</head>" >> $FILE_PATH_OUT
echo "<body>" >> $FILE_PATH_OUT
echo "<table>" >> $FILE_PATH_OUT
echo "<tr><th>Nombre</th><th>Code HTTP</th><th>URL</th><th>Encodage</th></tr>" >> $FILE_PATH_OUT
while read -r line;
do
	#obtenir le code HTTP and store it in a variable 
	CURL=$(curl -s -I -L ${line} | tr -d "\r" ) #obtenir les headers
	HTTPCODE=$(echo "$CURL" | grep "^HTTP" | egrep -o "[[:digit:]]{3}" | tail -n 1)
	ENCODING=$(echo "$CURL" | grep "^content-type:" | egrep -o "charset=[^;]*" | cut -f 2 -d =)
	echo "<tr>" >> $FILE_PATH_OUT
	echo "<td>$N</td><td>$HTTPCODE</td><td>${line}</td><td>$ENCODING</td>" >> $FILE_PATH_OUT
	echo "</tr>" >> $FILE_PATH_OUT
	N=$(expr $N + 1)
done < "$FILE_PATH_IN"

echo "</body>" >> $FILE_PATH_OUT
echo "</html>" >> $FILE_PATH_OUT

