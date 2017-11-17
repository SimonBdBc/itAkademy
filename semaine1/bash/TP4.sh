#! /bin/bash

read -p "enter the name of an animal : [horse, dog, cat, chicken, man]" animal;
echo "you choose: $animal"

 
case $animal in
horse) echo "four";;
dog) echo "four";;
cat) echo "four";;
chicken) echo "two";;
man) echo "two";;
*) echo "unknown";;
esac
echo " legs"

