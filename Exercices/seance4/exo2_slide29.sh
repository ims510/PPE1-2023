#!/bin/bash

# Le classement des lieux les plus cités, prendre en argument l'année, le mois et le nombre de lieux
# à afficher. Accepter * pour l'année et le mois

YEAR=$1
MONTH=$2
PLACES=$3
FILE_PATH=$4

cat $FILE_PATH/$YEAR/$MONTH/* | grep "Location" | cut -f 3 | uniq --count | sort -rn | head -n $PLACES