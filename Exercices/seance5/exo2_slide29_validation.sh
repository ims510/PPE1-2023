#!/bin/bash

# Le classement des lieux les plus cités, prendre en argument l'année, le mois et le nombre de lieux
# à afficher. Accepter * pour l'année et le mois

YEAR=$1
MONTH=$2
PLACES=$3
FILE_PATH=$4
OK=0

if [ $# -ne 4 ] #mon programme demande 4 arguments: l'année, le mois, le nombre de résultats désirés et le chemin vers les fichiers
then
	echo "ce programme demande 4 arguments: l'année, le mois, le nombre de résultats désirés et le chemin vers les fichiers"
		exit
fi


if [[ $YEAR =~ 201[6-8]|\* ]]
then
	OK=$(expr $OK + 1)
else
	echo "L'année n'est pas valide (doit etre 2016, 2017 ou 2018)"
		exit
fi

if [[ $MONTH =~ [0-1][0-9]|\* ]]
then
	OK=$(expr $OK + 1)
else
	echo "Le mois n'est pas valide (doit etre 01, 02...12)"
		exit
fi

if [[ $PLACES -gt 0 ]]
then
	OK=$(expr $OK + 1)
else
	echo "Il faut écrire au moins 1 element à afficher"
		exit
fi

if [[ $FOLDER_PATH =~ [a-z]*/*[a-z]* ]]
then
	OK=$(expr $OK + 1)
else
	echo "Le chemin vers les fichiers n'est pas valide"
		exit
fi

if [ $OK -eq 4 ]
then
	cat $FILE_PATH/$YEAR/$MONTH/* | grep "Location" | cut -f 3 | uniq --count | sort -rn | head -n $PLACES
fi