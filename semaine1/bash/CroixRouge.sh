-----------
Paulo
-----------

#! /bin/bash
echo 'Quelle est la nature de votre blessure ? '
choice="";
select response in 'Plaie' 'Entorse' 'Fracture' 'Brûlure' 'Hématome' 'Déchirure' 'R hume';do
  case $response in
    Plaie ) choice="Plaie";break;;
    Entorse ) choice="Entorse";break;;
    Fracture ) choice="Fracture";break;;
    Brûlure ) choice="Brûlure";break;;
    Hématome ) choice="Hématome";break;;
    Déchirure ) choice="Déchirure";break;;
    Rhume ) choice="Rhume";break;;
  esac
done
if [[ "$choice" == "Rhume" ]]; then echo "Serieux ? C'est les urgences pas la foire à la saucisse ici ! Dégage ! ";
  #statements
  sleep 1
  echo "..."
  sleep 1
  echo "Connard !"
else

  if [[ "$choice" == 'Plaie' ]]; then echo "il est en premier lieu nécessaire de nettoyer et de désinfecter la plaie, puis de la panser.";
  echo 'Quelles est votre type de plaie ?'
    plaie_response="";
    select plaies in 'Plaie Superficielle' 'Plaie Profonde'; do
      case $plaies in
        "Plaie Superficielle" ) plaie_response="superficielle";break;;
        "Plaie Profonde" )   plaie_response="profonde";break;;
      esac
    done
    if [[ "$plaie_response" == "superficielle" ]]; then echo "Un gel hydrocolloïde peut être utilisé à la fois en cas de plaie sèche ou de plaie suintante : le produit permet d’hydrater la plaie lorsque celle-ci est sèche et absorbe l’excès d’exsudat lorsque celle-ci est humide.1"
    else echo "Une plaie ouverte importante peut nécessiter une prise en charge médicale avec recours à de la colle chirurgicale, à des sutures à fil ou des agrafes, veillez à vous rendre rapidement en centre hospitalier"
    fi


  elif [[ "$choice" == 'Entorse' ]]; then echo "dommage"
    #statements


  elif [[ "$choice" == 'Fracture' ]]; then echo "Commencez par appliquer ces principes:
    Ne pas bouger le membre blessé
    Appliquer de la glace sur le membre
    Immobiliser le membre
    Maintenir le membre en position surélevée
    ";
    echo "Quel est votre membre fracturé ?"
    fracture_response=""
    select fractures in 'Jambes' 'Bras' 'Cou' 'Crâne' 'Epaules' 'Pieds' 'Mains' 'Poignets'; do
      case $fractures in
        "Jambes" ) fracture_response="Jambes";break;;
        "Bras" ) fracture_response="Bras";break;;
        "Cou" ) fracture_response="Cou";break;;
        "Tête" ) fracture_response="Tête";break;;
        "Epaules" ) fracture_response="Epaules";break;;
        "Pieds" ) fracture_response="Pieds";break;;
        "Mains" ) fracture_response="Mains";break;;
        "Poignets" ) fracture_response="Poignets";break;;
      esac
    done
    if [[ "$fracture_response" == "Cou" ]]; then echo "Bravo vous êtes probablement mort.";
    elif [[ "$fracture_response" == "Jambes" ]]; then echo "Placez une attelle temporaire (support rigide comme une planchette de bois) de chaque côté de la jambe fracturée et maintenir l’ensemble avec du tissu noué.
      Ne pas serrer trop fort afin d’éviter de créer un effet garrot et d’empêcher la bonne circulation sanguine."
    elif [[ "$fracture_response" == "Bras" ]]; then echo "Placez le bras fracturé contre la poitrine et l’entourer en écharpe, avec un tissu noué derrière le cou."
    elif [[ "$fracture_response" == "Crâne" ]]; then echo "Foncez à l'hôpital abruti !"
    elif [[ "$fracture_response" == "Epaules" ]]; then echo "Si vous passez par un traitement à l'arrache, procédez comme suis, mais soyez informez que des déformations de l'os peuventt intervenir:
      Portez une attelle d'immobilisation coude au corps, ou par des anneaux qui attirent l'extrémité distale de la clavicule vers l'arrière que l'on porte pour une période de trois à quatre semaines.
      Sinon allez au urgences directement."
    elif [[ "$fracture_response" == "Pieds" ]]; then echo "Cette fracture est compliquée à gérer et vous devrez vous rendre à l'hopital pour guérir
      Néanmoins voici ce que vous pouvez faire:
      Bouger au minimum le pied et le surélever, trouvez quelque chose pour coller vos morceaux de iep."
    elif [[ "$fracture_response" == "Mains" ]]; then echo "Rendez vous à l'hôpital, vous serez alors plâtré, le processus de guréison prendra environ un mois"
    elif [[ "$fracture_response" == "Poignets" ]]; then echo "Sensiblement pareil que pour la main, plâtrez vous et ne bougez pas votre membre."
    fi

  elif [[ "$choice" == "Brûlure" ]]; then echo "dommage, j'ai la flemme de vous expliquer"

  elif [[ "$choice" == "Hématome" ]]; then echo "dommage, j'ai la flemme de vous expliquer"

  elif [[ "$choice" == "Déchirure" ]]; then echo "dommage, j'ai la flemme de vous expliquer"

  fi
fi



----------
Antoine
----------

#! /bin/bash
echo "---------------------------"
echo "Reflexe Accident Domestique"
echo "---------------------------"

echo "Gardez votre calme et veuillez répondre aux questions suivantes"


echo "Quel est la nature de la blessure ?"
woundType="";

#Premier menu de selection du type de blessure => 5 choix possibles
select response in "Coupure" "Piqure" "Brulure" "Fracture" "Autre";do
 case $response in
  Coupure ) woundType="Coup";break;;
  Piqure ) woundType="Piq";break;;
  Brulure ) woundType="Brul";break;;
  Fracture ) woundType="Frac";break;;
  Autre ) woundType="Other";break;;
esac
done

#Dans le cas d'une coupure => sous choix (profonde ou superficielle)
if [ "$woundType" == "Coup" ]
 then
   echo "Il est important d'appliquer des soins rigoureux et de bien nettoyer une plaie cutanée"
   echo "L'entaille est elle profonde ou superficielle ?"
   echo "(Choisissez (retour) pour revenir au début)"
   choice="";

   select response in "profonde" "superficielle" "retour";do
     case $response in
       profonde ) choice="profonde";break;;
       superficielle ) choice="superficielle";break;;
       retour ) choice="retour";break;;
     esac
   done

   if [ "$choice" == "profonde" ]
    then
      echo "Désinfectez la plaie à l'aide d'alcool médical ou d'antiseptique et sortez en les corps etrangers,"
      echo "appliquez une pression sur la plaie avec une compresse stérile et appelez le 15 ou le 112, vous aurez besoin d'une suture"
    elif [ "$choice" == "retour" ];
    then
     bash croixrouge.sh
      #statements
    else
      echo "Désinfectez la plaie a l'aide d'alcool médical ou d'une lotion antiseptique et nettoyez la puis appliquez un pansement stérile"
   fi


#Dans le cas d'une piqure => sous choix
  elif [ "$woundType" == "Piq" ];
   then
     echo "Dans le cas d'une piqûre,  "
    #statements
fi

////////////////////////////////

KEVIN

////////////////////////////////

#! /bin/bash
menu() {
  select test in "Retourner au menu" "Quitter";
  do
    case $test in
      "Retourner au menu" ) bash scriptCroixRouge.sh;;
      "Quitter" ) exit O;;
    esac
  done
}


echo "Bienvenue sur l'application officielle de la $(tput setaf 1)Croix-Rouge Française$(tput sgr 0).";
echo "Elle vous permet de découvrir les premiers gestes à effectuer en cas de blessure."

echo "Que voulez-vous faire?"

#Déterminer le choix de l'utilisateur
select menu in "Choisir le type de blessure" "Quitter";
do
  case $menu in
    "Choisir le type de blessure" ) break;;
    #Si l'utilisateur souhaite quitter l'application.
    "Quitter" ) echo "Merci d'avoir utiliser notre application. A bientôt";exit 0;;
  esac
done

echo "Nous allons vous poser quelques questions pour déterminer la nature de la blessure et vous conseiller les premiers soins à prodiguer.";
echo "/!\ Avant toute chose, veuillez à bien vous laver les mains à l'eau et au savon /!\\"

#Demande à l'utilisateur de sélectionner le type de blessure.
choice="";
select typeBlessure in "Plaie" "Hématome" "Piqûre" "Fracture" "Retourner au menu";
do
  case $typeBlessure in
    Plaie ) choice="Plaie";break;;
    Hématome ) choice="Hématome";break;;
    Piqûre ) choice="Piqûre";break;;
    Fracture ) choice="Fracture";break;;
    "Retourner au menu" ) bash scriptCroixRouge.sh;;
  esac
done

#Si l'utilisateur choisi une plaie.
if [ "$choice" == "Plaie" ]
then
  echo "La peau protège l'ensemble du corps contre les agressions extérieures. C'est pourquoi toute plaie cutanée nécessite des soins rigoureux."
  echo "L'objectif est d'arrêter les saignements, éviter les infections et favoriser une bonne cicatrisation."
  echo "Vous pouvez soigner vous-même plusieurs types de plaies:"
  select typeBlessure in "Eraflure" "Coupure" "Brûlure" "Retourner au menu";
  do
    case $typeBlessure in
      Eraflure ) choice="Eraflure";break;;
      Coupure ) choice="Coupure";break;;
      Brûlure ) choice="Brûlure";break;;
      "Retourner au menu" ) bash scriptCroixRouge.sh;;
    esac
  done
  #L'utilisateur sélectionne l'éraflure.
  if [ "$choice" == "Eraflure" ]
  then
    echo "Une éraflure saigne peu et guérissent le plus souvent sans séquelle."
    printf "\n"
    echo "-----------------------------"
    echo "Comment soigner une éraflure?"
    echo "-----------------------------"
    printf "\n"
    echo "Il suffit de désinfecter la zone touchée avec une compresse et un antiseptique."
    printf "\n"
    menu
  fi
  #L'utilisateur sélectionne une coupure.
  if [ "$choice" == "Coupure" ]
  then
    echo "Dans le cas d'un coupure simple, peu profonde et peu étendue, vous pouvez la traiter directement à domicile."
    printf "\n"
    echo "-----------------------------"
    echo "Comment soigner une coupure?"
    echo "-----------------------------"
    printf "\n"
    echo "1. Pour ôter le sang et les salissures, passez la plaie sous un filet d’eau à température ambiante."
    echo "2. Désinfectez la plaie du centre vers l’extérieur, avec une compresse et un antiseptique."
    echo "3. Recouvrez la plaie d’un pansement adhésif prêt à l’emploi. Cela favorise la cicatrisation en maintenant la peau humide."
    printf "\n"
    echo "En cas d'une coupure profonde et/ou étendue, veuillez consulter les urgences au plus vite."
    printf "\n"
    menu
  fi
  #L'utilisateur sélectionne une brûlure.
  if [ "$choice" == "Brûlure" ]
  then
    echo "Dans le cas d'un coupure simple, peu profonde et peu étendue, vous pouvez la traiter directement à domicile."
    printf "\n"
    echo "-----------------------------"
    echo "Comment soigner une coupure?"
    echo "-----------------------------"
    printf "\n"
    echo "1. Pour ôter le sang et les salissures, passez la plaie sous un filet d’eau à température ambiante."
    echo "2. Désinfectez la plaie du centre vers l’extérieur, avec une compresse et un antiseptique."
    echo "3. Recouvrez la plaie d’un pansement adhésif prêt à l’emploi. Cela favorise la cicatrisation en maintenant la peau humide."
    printf "\n"
    echo "En cas d'une coupure profonde et/ou étendue, veuillez consulter les urgences au plus vite."
    printf "\n"
    menu
  fi
else bash scriptCroixRouge.sh;
fi


h scriptCroixRouge.sh;
fi



#if [ "$choice" == "Hématome" ]
#then


#if [ "$choice" == "Piqûre" ]
#then


#if [ "$choice" == "Fracture" ]
#then

/////////////////////////////
Julie
////////////////////////////
echo "Quel est votre type blessure ? "
choice=""
select choix in "Coupure" "Fracture" "Brulure" "Perte de connaissance";do
  case $choix in
    Coupure ) choice="Coupure";break;;
    Fracture ) choice="Fracture";break;;
    Brulure ) choice="Brulure";break;;
    "Perte de connaissance" ) choice="Perte_de_connaissance";break;;
  esac
done
if [ "$choice" == "Coupure" ]
 then
  echo "Quelle est la profondeur de celle ci ? "
    select profondeur in "Egratignure" "Quelques mm" "Quelques cm";do
      case $profondeur in
        "Egratignure" ) choice="egratignure";break;;
        "quelques mm" ) choice="quelques mm";break;;
        "quelques cm" ) choice="quelques cm";break;;
      esac
    done
    if [ "$choice" == "egratignure" ]
      then echo "Désinfectez la plaie et mettez un pansement."
    if [ "$choice" == "quelques mm" ]
      then echo "Allez à l'hopital, des points de sutures sont peut être necessaire."
    else echo "Le sang arrête t'il de couler après un peu d'attente ? "
      select sang in "Oui" "Non";do
        case $sang in
          "Oui" ) choice="oui";break;;
          "Non" ) choice="non";break;;
        esac
      done
      if [ "$choice" == oui ]
        then echo "Allez à l'hopital, des points de sutures sont peut être necessaire."
      else echo "Compressez la plaie avec un tissue propre et attendez les secours."
      fi
      fi
    fi
  fi


-----------
Simon
-----------

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
