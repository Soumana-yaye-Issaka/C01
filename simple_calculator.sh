#!/bin/bash
#Demande à l'utilisateur d'entrer a,b,et opera
read a b opera
#Verification de Type d'operateur
if [ "$opera" = "+" ]; then
    resulta=$(($a + $b)) #Addition
elif [ "$opera" = "-" ]; then
    resulta=$(($a - $b)) #Soustraction
elif [ "$opera" = "/" ]; then
    resulta=$(($a / $b)) #Division
elif [ "$opera" = "*" ]; then
    resulta=$(($a * $b)) #Multiplication
fi
echo "Résultat : $resulta" #Resultat de l'operation
