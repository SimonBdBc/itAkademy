#! /bin/bash

echo "Quel est votre jour de naissance ?"
read jour

echo "Quel est votre mois de naissance ?"
read mois

echo "Quel est votre année de naissance ?"
read an

jourj=$(date '+%d')
moism=$(date '+%m')
ana=$(date '+%Y')

agej=$(($jourj-$jour))
agem=$(($moism-$mois))
agea=$(($ana-$an))

if (( $agej < 0 ))
  then
    agej=$(($agej+30))
    agem=$(($agem-1))
  else
    agej=$agej
fi 

if (( $agem < 0 ))
  then 
    agem=$(($agem+12))
    agea=$(($agea-1))
  else
    agem=$agem
fi

#if (( $agej < 0 ))
#  then
#    agem=$(($agem-1))
#  else
#    agem=$agem
#fi

echo "Vous avez $agea ans, $agem mois et $agej jours"
