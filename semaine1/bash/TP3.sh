#! /bin/bash

#read -p "Do you want to continous [YES or NO] ?" reponse;
#if [ "$reponse" == "YES" ]
#then
#  echo "you said yes";
#echo $reponse
#elif [ "$reponse" == "NO" ]
#then
#  echo " you said no";
#else
#  echo "error"
#fi

#echo "do you want to go on ?";
#select reponse in "yes" "no" "maybe";
#do
#case $reponse in
#  yes ) echo "oui"; break;;
#  no ) echo "non"; exit;;
#esac
#done


echo "do you want to go on ?";
choice"";
select reponse in "yes" "no" "maybe";
do
case $reponse in
  yes ) choice"oui"; break;;
  no ) choice"non"; break;;
esac
done
if [ "$choice" == "oui" ]
then
  echo "tu as dit oui";
fi
