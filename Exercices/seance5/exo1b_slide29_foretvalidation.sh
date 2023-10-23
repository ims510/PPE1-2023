#!/bin/bash

# Lancer le script precedent 3 fois, une fois par chaque année

ENTITY_TYPE=$1
FOLDER_PATH=$2
OK=0

if [ $# -ne 2 ] #mon programme demande 2 arguments: le type de fichier et le chemin vers les fichiers
then
	echo "ce programme demande 2 arguments: le type de fichier et le chemin vers les fichiers"
		exit
fi

if [[ $ENTITY_TYPE =~ (ann)|(txt) ]]
then
	OK=$(expr $OK + 1)
else
	echo "Le type de fichier n'est pas valide (doit etre ann ou txt)"
		exit
fi

if [[ $FOLDER_PATH =~ [a-z]*/*[a-z]* ]]
then
	OK=$(expr $OK + 1)
else
	echo "Le chemin vers les fichiers n'est pas valide"
		exit
fi

if [ $OK -eq 2 ]
then
	for YEAR in 2016 2017 2018
	do
		echo -n "Nombre d'entités de type $ENTITY_TYPE en $YEAR:"
		./exo1a_slide29_validation.sh $ENTITY_TYPE $FOLDER_PATH $YEAR
	done	
fi
