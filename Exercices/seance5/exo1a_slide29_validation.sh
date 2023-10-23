#!/bin/bash

#Ecrire un script qui compte les entités pour une année, un type d'entité donné en argument

ENTITY_TYPE=$1
FOLDER_PATH=$2
YEAR=$3
OK=0

if [ $# -ne 3 ] #mon programme demande 3 arguments: le type de fichier, le chemin vers les fichiers, et l'année
then
	echo "ce programme demande 3 arguments: le type de fichier, le chemin vers les fichiers, et l'année"
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

if [[ $YEAR =~ 201[6-8] ]]
then
	OK=$(expr $OK + 1)
else
	echo "L'année n'est pas valide (doit etre 2016, 2017 ou 2018)"
		exit
fi

if [ $OK -eq 3 ]
then
	ls $FOLDER_PATH/$ENTITY_TYPE/$YEAR/*/* | wc -l
fi
