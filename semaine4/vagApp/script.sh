#! bin/bash

echo "Nom du dossier à créer :"
read namedos

echo "Version de Ubunutu :"
read version

mkdir ../$namedos

cd ../$namedos

mkdir ./data

vagrant init

sed -i '' '15s|base|ubuntu/'"${version}"'|' Vagrantfile
sed -i '' '35s|#||' Vagrantfile
sed -i '' '46s|#||' Vagrantfile
sed -i '' '46s|../data|./data|' Vagrantfile
sed -i '' '46s|/vagrant_data|/var/www/html|' Vagrantfile 

vagrant up

vagrant ssh

sudo apt-get install apache2 


