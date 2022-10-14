#!/bin/bash

read -p "Quelle opération voulez-vous effectuer : [A]ddition [S]oustraction [M]ultiplication [D]ivision ?" operation

case $operation in
    [Aa]|[Aa]ddition|'+')
        read -rp 'Donnez les deux nombres à additionner : ' var1 var2
        echo "Résultat : $(echo $var1 + $var2| bc -l)"
    ;;
    [Ss]|[Ss]oustraction|'-')
        read -rp 'Donnez les deux nombres à soustraire : ' var1 var2
        echo "Résultat : $(echo $var1 - $var2| bc -l)"
    ;;
    [Mm]|[Mm]ultiplication|'*')
        read -rp 'Donnez les deux nombres à multiplier : ' var1 var2
        echo "Résultat : $(echo $var1 \* $var2| bc -l)"
    ;;
    [Dd]|[Dd]ivision|'/')
        read -rp 'Donnez les deux nombres à diviser : ' var1 var2
        echo "Résultat : $(echo $var1 / $var2| bc -l)"
    ;;
    *) echo "Opération : \"$operation\" non reconnue."
    ;;
esac
