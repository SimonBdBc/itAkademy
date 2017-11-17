#! /bin/bash

while [ "$yn" == "non" ]
read -p " Bonjour, quel est votre problème ? : [malaise, saignement, fracture, brulure] " reponse;
     echo "$reponse"

read -p "etes vous sure de votre choix ? [oui ou non] " yn;

#non="non"
#while [ "$yn" == "$oui" ];
#do
#  if [ "$yn" == "$non" ];
#then
#     echo "recommencez";
# fi
#done
#echo "continuons";
