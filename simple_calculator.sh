#!/bin/bash

# Vérifier que trois arguments ont été fournis
if [ "$#" -ne 3 ]; then
    echo "Usage : $0 <nombre1> <opérateur> <nombre2>"
    exit 1
fi

# Récupérer les arguments
num1=$1
operator=$2
num2=$3

# Vérifier que num1 et num2 sont des nombres
if ! [[ "$num1" =~ ^-?[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$num2" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Erreur : Veuillez entrer des nombres valides."
    exit 1
fi

# Effectuer l'opération selon l'opérateur fourni
case $operator in
    +) result=$(echo "$num1 + $num2" | bc) ;;
    -) result=$(echo "$num1 - $num2" | bc) ;;
    \*) result=$(echo "$num1 * $num2" | bc) ;;
    /) 
        if [ "$num2" == "0" ]; then
            echo "Erreur : Division par zéro impossible."
            exit 1
        fi
        result=$(echo "scale=2; $num1 / $num2" | bc)
        ;;
    *) 
        echo "Erreur : Opérateur invalide. Utilisez +, -, *, /."
        exit 1
        ;;
esac

# Afficher le résultat
echo "Résultat : $num1 $operator $num2 = $result"
