#!/bin/bash

# Vérifier si un répertoire est spécifié
if [ -z "$1" ]; then
    echo "Usage : $0 <répertoire>"
    exit 1
fi

# Vérifier si le répertoire existe
if [ ! -d "$1" ]; then
    echo "Le répertoire '$1' n'existe pas."
    exit 1
fi

echo "📊 Utilisation du disque :"
echo "--------------------------"

# Affichage de l'utilisation globale des partitions
df -h | awk 'NR==1 || $NF=="/"'  # Affiche uniquement la ligne du système de fichiers principal

echo ""
echo "📂 Utilisation du répertoire '$1' :"
du -sh "$1"
