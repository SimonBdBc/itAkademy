#!/bin/bash

 echo "
----- Bonjour, quel est votre problème ? : -----

(1)  Fracture
(2)  Saignement
(3)  Brulure

(5)  Q = Quitter

Merci de saisir le numéro voulu :
"
read choix_menu
case $choix_menu in
1) echo " ----- Fracture -----
    <1>  foulure
    <2>  interne
    <3>  ouverte
    <4>  Menu
    <5>  Q = Quitter
    "
    read choix_menu_1
    echo
    case $choix_menu_1 in
    1) echo "Mettez de la glace et allez à l'hopital" ;;
    2) echo "Immobilisez le membre et appelez le 15" ;;
    3) echo "Arretez l'hémoragie, appelez le 15 et prenez votre mal en patience" ;;
    4) bash CR.sh ;;
    5 | Q | q ) echo "Vous avez quitter le programme" ;;
    *) echo "Erreur saisi Menu 1";;
    esac
;;

2) echo " ----- Saignement -----
    <1>  coupure
    <2>  émoragie
    <3>  autre
    <4>  Menu
    <5>  Q = Quitter
    "
    read choix_menu_2
    echo
    case $choix_menu_2 in
    1) echo "mettez un pansement" ;;
    2) echo "faites pression sur la plaie" ;;
    3) echo "Appelez le 15" ;;
    4) bash CR.sh ;;
    5 | Q | q ) echo "Vous avez quitter le programme" ;;
    *) echo "Erreur saisi Menu 2";;
    esac
;;
3) echo " ----- Brulure -----
    <1>  1er degré
    <2>  2eme degré
    <3>  3eme degré
    <4>  Menu
    <5>  Q = Quitter
    "
    read choix_menu_3
    echo
    case $choix_menu_3 in
    1) echo "Allez à l'hopital" ;;
    2) echo "Allez à l'hopital" ;;
    3) echo "Allez à l'hopital" ;;
    4) bash CR.sh ;;
    5 | Q | q ) echo "Vous avez quitter le programme" ;;
    *) echo "Erreur saisi Menu 3";;
    esac
;;

5 | Q | q ) echo "Vous avez quitter le programme" ;;
*) echo "Erreur saisi menu principal";;
esac
