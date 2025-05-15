#!/bin/bash
# Ce script recherche une chaîne de caractères dans un fichier
read filename #Demande à l'utilisaeur d'entrer le nom d'un fichier 
read chaine # Demandde à l'utilisateur  d'entrer la chîne à rechercher 
# Utilisation de grep avec -q (quiet) pour verifier si la chaîne existe dans le fichier
if grep -q "$chaine" "$filename"; then
  echo "La chaîne '$chaine' a été trouvée dans $filename."
else
  echo "La chaîne '$chaine' n'a pas été trouvée dans $filename."
fi
