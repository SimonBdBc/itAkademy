
Sujet 1 :
Vous devez développer une application «magique » qui doit permettre a un futur sorcier de commander sa baguette sans sortir de chez lui.
Cette application devra poser des questions au sorcier, et lui proposer une baguette en fonction de ses choix.
Un minimum de 10 questions devra être mis en place, utilisant toutes les structures et les elements de bash que nous avons vu.
Il faudra trouver également une solution pour colorer le texte affiché, et pour afficher des images au format ASCII.
Pensez à utiliser des variables et à proposer une experience la plus interactive possible.

inscrits:
Quentin B, Jordan, Germain, Etienne, Cloé, Stéphane, Marty, Thibault
Codeshare : https://codeshare.io/DWM8Groupe1

CODE :
#! /bin/bash
#Choix du questionnaire
echo -e "Choisissez un questionnaire :"
select responseQuestion in "Etienne" "Jordan";do
case $responseQuestion in
  Etienne ) choiceQuestion="Etienne";break;;
  Jordan ) choiceQuestion="Jordan";break;;
esac
done

if [ "$choiceQuestion" == "Etienne" ]; then
#Code Etienne
#Declaration des variables
byeMoldu="Au revoir moldu.";
choiceBonbon="";
choiceSorcier="";
choiceBienMal="";
choiceSort="";
choiceMaison="";
choiceBalai="";
choiceVif="";
choiceMinistere="";
choiceAvada="";
choiceDoloris="";
choiceNez="";
choiceNoir="";

#Debut du script
#Premiere question qui permet de savoir si l'utilisateur est au courant du monde de la magie
echo -e "\033[47mBonjour et bienvenue, avant de rentrer dans les détails, j'ai besoin de savoir si vous aimez les bonbons de Bertie Crochu ? \033[0m";
select responseBonbon in "Oui" "Non" "Inconnu";do
  case $responseBonbon in
    Oui ) choiceBonbon="Oui";break;;
    Non ) choiceBonbon="Non";break;;
    Inconnu ) choiceBonbon="Inconnu";break;;
  esac
done

#Vu qu'il ne connait pas ces bonbons, c'est un moldu, il est donc expulsé du script
if [ "$choiceBonbon" == "Inconnu" ]
then
  echo $byeMoldu;
  exit;
elif [ "$choiceBonbon" == "Oui" ] || [ "$choiceBonbon" == "Non" ];
then
  #Seconde question pour savoir s'il est déjà sorcier
  echo -e "\033[47mEtes-vous déjà sorcier ?\033[0m";
  select responseSorcier in "Oui" "Non";do
    case $responseSorcier in
      Oui ) choiceSorcier="Oui";break;;
      Non ) choiceSorcier="Non";break;;
    esac
  done
  #Il aime pas les bonbons et il est sorcier, il a pas besoin d'une baguette de haut niveau
  if [ "$choiceBonbon" == "Non" ] && [ "$choiceSorcier" == "Oui" ]
  then
    echo -e "\033[34mVous avez une baguette de niveau 1.\033[0m";
    exit;
  #Si des moldus ont mis oui a la premiere question
  elif [ "$choiceSorcier" == "Non" ]
  then
    echo $byeMoldu;
    exit;
  elif [ "$choiceSorcier" == "Oui" ]
  then
    #Troisieme question pour savoir s'il veut faire le bien ou le mal
    echo -e "\033[47mVoulez vous faire le bien ou le mal avec votre baguette ?\033[0m";
    select responseBienMal in "Bien" "Mal";do
      case $responseBienMal in
        Bien ) choiceBienMal="Bien";break;;
        Mal ) choiceBienMal="Mal";break;;
      esac
    done

    #Premier cas : le mal avec le sort Avada Kedavra
    if [ "$choiceBienMal" == "Mal" ]
    then
      echo -e "\033[31mPour toutes baguettes vendues à destination du mal, le vendeur n'en est pas responsable, merci de votre compréhension. PS : Risque d'être envoyé à Azkaban\033[0m";
      echo -e "\033[47mAimez-vous un des sorts interdits comme Avada Kedavra ?\033[0m";
      select responseAvada in "Oui" "Non";do
        case $responseAvada in
          Oui ) choiceAvada="Oui";break;;
          Non ) choiceAvada="Non";break;;
        esac
      done
    fi
    #Si il aime bien le sort Avada
    if [ "$choiceAvada" == "Oui" ]
    then
      #Savoir s'il a un nez
      echo -e "\033[47mAvez-vous un nez ?\033[0m"
      select responseNez in "Oui" "Non";do
        case $responseNez in
          Oui ) choiceNez="Oui";break;;
          Non ) choiceNez="Non";break;;
        esac
      done
      #Si la personne n'a pas de nez, on sait deja qui c'est
      if [ "$choiceNez" == "Non" ]
      then
        echo -e "\033[34mBienvenue Monsieur, votre baguette sera prête en temps voulu.\033[0m"
        exit;
        #Si il a un nez
      else [ "$choiceNez" == "Oui" ]
        echo -e "\033[34mVous aurez une baguette de niveau 5 pour le mal.\033[0m"
        exit;
      fi
      #S'il n'aime pas le sort Avada Kedavra alors on lui propose un autre sort interdit
    elif [ "$choiceAvada" == "Non" ]
    then
      echo -e "\033[47mAimez-vous le sort Doloris ?\033[0m"
      select responseDoloris in "Oui" "Non";do
        case $responseDoloris in
          Oui ) choiceDoloris="Oui";break;;
          Non ) choiceDoloris="Non";break;;
        esac
      done
      #Si la personne n'aime pas le sort Doloris
      if [ "$choiceDoloris" == "Non" ]
      then
        echo -e "\033[34mVous aurez une baguette de niveau 4 pour le mal.\033[0m"
        exit;
        #Si elle aime bien le sort Doloris
      else
        echo -e "\033[34mVous aurez une baguette de niveau 5 pour le mal.\033[0m"
        exit;
      fi
    fi

    #Second cas : le bien
    if [ "$choiceBienMal" == "Bien" ]
    then
      echo -e "\033[47mQuel sort préférez-vous ?\033[0m";
      select responseSort in "Lumos" "Patronus" "Incendio";do
        case $responseSort in
          Lumos ) choiceSort="Lumos";break;;
          Patronus ) choiceSort="Patronus";break;;
          Incendio ) choiceSort="Incendio";break;;
        esac
      done
      #Si la personne repond Lumos ou Incendio
      if [ "$choiceSort" == "Incendio" ] || [ "$choiceSort" == "Lumos" ]
      then
        echo -e "\033[34mVous aurez une baguette de niveau 3 pour le bien.\033[0m";
        exit;
      elif [ "$choiceSort" == "Patronus" ]
      then
        echo -e "\033[47mQuelle est votre maison ?\033[0m"
        #Choisir sa maison (pas poufsoufle svp)
        select responseMaison in "Gryffondor" "Serdaigle" "Poufsoufle" "Serpentard";do
          case $responseMaison in
            Gryffondor ) choiceMaison="Gryffondor";break;;
            Serdaigle ) choiceMaison="Serdaigle";break;;
            Poufsoufle ) choiceMaison="Poufsoufle";break;;
            Serpentard ) choiceMaison="Serpentard";break;;
          esac
        done
        if [ "$choiceMaison" == "Gryffondor" ] || [ "$choiceMaison" == "Serdaigle" ] || [ "$choiceMaison" == "Poufsoufle" ] || [ "$choiceMaison" == "Serpentard" ]
        then
          echo -e "\033[47mAvez-vous un balai volant ?\033[0m";
          #Demande s'il a un balai volant
          select responseBalai in "Oui" "Non";do
            case $responseBalai in
              Oui ) choiceBalai="Oui";break;;
              Non ) choiceBalai="Non";break;;
            esac
          done
          if [ "$choiceBalai" == "Non" ]
          then
            echo -e "\033[34mVous aurez une baguette de niveau 3 pour faire le bien.\033[0m";
            exit;
          elif [ "$choiceBalai" == "Oui" ]
          then
            #Savoir s'il a deja attrapé le vif d'or
            echo -e "\033[47mAvez-vous déjà attrapé un vif d'or ?\033[0m";
            select responseVif in "Oui" "Non";do
              case $responseVif in
                Oui ) choiceVif="Oui";break;;
                Non ) choiceVif="Non";break;;
              esac
            done
            if [ "$choiceVif" == "Oui" ]
            then
              echo -e "\033[34mVous aurez une baguette de niveau 5 pour le bien.\033[0m";
              exit;
            else
              echo -e "\033[34mVous aurez une baguette de niveu 4 pour le bien\033[0m";
              exit;
            fi
          fi
        fi
      fi
    fi
  fi
fi

#Code de Jordan
else
cyanclair='\e[1;36m'
rouge='\033[31m '
neutre='\033[0m'

#1ère question :
echo -e "${rouge} As-tu la Parkinson ? ${neutre}";
premq="";
select response in 'Oui' 'Non' ;do
  case $response in
Oui ) option1='stabilisante';break;;
Non ) option1='fixe';break;;
  esac
done

#2ème question :
echo -e "${rouge}Es-tu gauché, droitié ou ambidextre ? ${neutre}";
deuxq="";
select response2 in 'Droitié' 'Gauché' 'Ambidextre';do
  case $response2 in
Droitié )  option2='pour droitié';break;;
Gauché ) option2='pour gauché';break;;
Ambidextre ) option2='pour ambidextre';break;;
  esac
done

#3ème question :
echo -e "${rouge}Es-tu adroit ? ${neutre}"
troisq="";
select response3 in 'Oui' 'Non' ;do
  case $response3 in
Oui ) option3='fine';break;;
Non ) option3='grosse';break;;
  esac
done

#4ème question :
echo -e "${rouge}Ton avant-bras fait-il plus de 30 cm : ${neutre}";
quatreq="";
select response4 in 'Oui' 'Non';do
  case $response4 in
Oui ) option4='Grande';break;;
Non ) option4='Courte';break;;
  esac
done

#5ème question :
echo -e "${rouge}Tu es plutôt : ${neutre}"
cinqq="";
select response5 in 'étourdi' 'appliqué' ;do
  case $response5 in
étourdi ) option5='bracelet attaché au poignet';break;;
appliqué  ) option5='';break;;
  esac
done

#6ème question:
echo -e "${rouge}Tu as trois caractéristiques pour ta baguette, tu préfères qu elle soit : ${neutre}"
sixq="";
select response6 in 'estéthique' 'confortable' 'puissante';do
  case $response6 in
'estéthique' ) option6='estéthique';break;;
confortable ) option6='confortable';break;;
puissante ) option6='puissante';break;;
  esac
done

#7ème question
if [ $option6 == "estéthique" ]
then echo -e "${rouge}Il te reste deux caractéristique à choisir, laquelle des deux préfères-tu ? ${neutre}"
    septq="";
    select response7 in 'confortable' 'puissante';do
        case $response7 in
      confortable ) option7='confortable';break;;
      puissante ) option7='puissante';break;;
        esac
      done
        if [ $option7 == 'confortable' ]
            then
                option10='puissante';

        elif [ $option7 == 'puissante'];
            then
              option10='confortable'


        fi


elif [ $option6 == "confortable" ]
then
  echo -e "${rouge}Il te reste deux caractéristique à choisir, laquelle des deux préfères-tu ? ${neutre}";
  septq="";
  select response7 in 'estéthique' 'puissante';do
      case $response7 in
    estéthique  ) option7='estéthique';break;;
    puissante ) option7='puissante';break;;
            esac
    done
      if [ $option7 == "esthétique" ]
        then
          option10='puissante';
      elif [ $option7 == 'puissante' ];
        then
          option10='esthétique'
      fi


else
  echo -e "${rouge}Il te reste deux caractéristique à choisir, laquelle des deux préfères-tu ?${neutre}";
  septq="";
  select response7 in 'estéthique' 'confortable';do
      case $response7 in
    estéthique  ) option7='esthéthique';break;;
    confortable ) option7='confortable';break;;

      esac
  done

  if [ $option7 == "esthéthique" ];
    then
      option10='confortable';
  elif [ $option7 == 'confortable' ];
    then
      option10='esthétique';
  fi
fi


#8ème question :
echo -e "${rouge}Tes intentions sont : ${neutre}";
huitq="";
select response8 in 'Bonnes' 'Mauvaises' ;do
  case $response8 in
      Bonnes ) option8='légal';break;;
      Mauvaises ) option8='illégal';break;;
  esac
done

#9ème question :
echo -e "${rouge}Consommez vous régulièrement de l alcool ?${neutre}";
neufq="";
select response9 in 'Oui' 'Non' ;do
case $response9 in
  Oui ) option9="";break;;
  Non ) option9="";break;;
esac
done
#10ème question :
if [ "$response9" == "Oui" ]
then
echo -e "${rouge}Êtes-vous aveugle ?${neutre}"
dixq="";
  select response10 in 'Oui' 'Non';do
    case $response10 in
      Oui ) option9='Capteur sensitif afin de prendre la baguette dans le bon sens';break;;
      Non ) option9='Flèche désignant le sens de la baguette';break;;
    esac
done
elif [ "$response9" == "Non" ]
then
echo -e "${rouge}Consommez-vous de la drogue régulièrement ? ${neutre}"
  select responsive10 in 'Oui' 'Non' ;do
    case $responsive10 in
      Oui ) option9="";break;;
      Non ) option9="";break;;
    esac
  done
fi

#11ème question :

if [ "$responsive10" == "Oui" ]
then
  echo -e "${rouge}Êtes-vous aveugle ?${neutre}"
  select responsive11 in 'Oui' 'Non';do
    case $responsive11 in
      Oui ) option9="capteur sensitif afin de prendre la baguette dans le bon sens";break;;
      Non ) option9="";break;;
    esac
done
fi

echo 'Voici votre baguette idéal, elle contient les options suivantes : '
echo '-' $option1
echo '-' $option2
echo '-' $option3
echo '-' $option4
# if [ "$option5" == '' ];
#   then
#
# fi
# if [ "$option8" == '' ];
#  then
#
# fi

echo '-' $option9
echo 'Ses principales caractérisitques sont'
echo '1 -' $option6
echo '2 -' $option7
echo '3 -' $option10


cat <<"EOF"

      _            _.,----,
__  _.-._ / '-.        -  ,._  \)
|  `-)_   '-.   \       / < _ )/" }
/__    '-.   \   '-, ___(c-(6)=(6)
, `'.    `._ '.  _,'   >\    "  )
:;;,,'-._   '---' (  ( "/`. -='/
;:;;:;;,  '..__    ,`-.`)'- '--'
;';:;;;;;'-._ /'._|   Y/   _/' \
'''"._ F    |  _/ _.'._   `\
       L    \   \/     '._  \
.-,-,_ |     `.  `'---,  \_ _|
//    'L    /  \,   ("--',=`)7
| `._       : _,  \  /'`-._L,_'-._
'--' '-.\__/ _L   .`'         './/
           [ (  /
            ) `{
             \__)

EOF
fi

FIN DU CODE


Sujet 2 :
Votre patron vous a demandé de développer une application bash pour guider un utilisateur dans son choix de meubles.
Grace à un questionnaire complet, vous devrez lui proposer à terme un meuble avec une forme, une couleur et un usage personnalisé.
Vous devrez proposer des choix réfléchis, et donner l’impression a l’utilisateur qu’il est au centre de l’experience, alors que nous voulons juste le plumer.
Un minimum de 10 questions devra être mis en place, utilisant toutes les structures et les elements de bash que nous avons vu.
Il faudra trouver également une solution pour colorer le texte affiché, et pour afficher des images au format ASCII.
Pensez à utiliser des variables et à proposer une experience la plus interactive possible.

inscrits:
Valentin, morgan , Quentin , Sophie, Bassirre, Khenny
CODE SERIEUX :

#: /bin/bash

g=$(tput setaf 2) # Green
y=$(tput setaf 3) # Yellow
b=$(tput setaf 4) # Blue
p=$(tput setaf 5) # Purple
c=$(tput setaf 6) # Cyan
w=$(tput setaf 7) # White
n=$(tput sgr0) # Text reset
echo -e "\033[31m           0000\033[0m_____________0000________0000000000000000__000000000000000000+\n\033[31m         00000000\033[0m_________00000000______000000000000000__0000000000000000000+\n\033[31m        000\033[0m____000_______000____000_____000_______0000__00______0+\n\033[31m       000\033[0m______000_____000______000_____________0000___00______0+\n\033[31m      0000\033[0m______0000___0000______0000___________0000_____0_____0+\n\033[31m      0000\033[0m______0000___0000______0000__________0000___________0+\n\033[31m      0000\033[0m______0000___0000______0000_________000___0000000000+\n\033[31m      0000\033[0m______0000___0000______0000________0000+\n\033[31m       000\033[0m______000_____000______000________0000+\n\033[31m        000\033[0m____000_______000____000_______00000+\n\033[31m         00000000\033[0m_________00000000_______0000000+\n\033[31m           0000\033[0m_____________0000________000000007;"


echo "${g}Bonjour bienvenue, vous êtes ici pour choisir un meuble personnalisé"${n};
echo "Je vais vous aider à trouver le meuble qu'il vous faut !";
echo "Pour commencer pour quelle salle de votre maison chervez vous un meuble ?";

echo "De quel type de bois voudrais tu ton meuble :";
choix="";
choix2="";
choix3="";
choix4="";
choix5="";
choix6="";
choix7="";
choix8="";
choix9="";
choix10="";
choix11="";
cl="type de bois : ";


select rep in "le chêne" "le châtaigner" "le hêtre" "le sapin"; do
case $rep in
  "le chêne" ) choix="1" cl+=" le chêne "; break ;;
  "le châtaigner" ) choix="2" cl+=" le châtaigner "; break ;;
  "le hêtre" ) choix="3" cl+=" le hêtre "; break ;;
  "le sapin" ) choix="4" cl+=" le sapin "; break ;;
esac
done

cl+="\nmeuble : "

echo "Que voudrais-tu ?: "
select rep in "une table" "un bureau" "une bibliothèque" "une armoire"; do
case $rep in
  "une table" ) choix2="1" cl+=" une table"; break ;;
  "un bureau" ) choix2="2" cl+=" un bureau"; break ;;
  "une bibliothèque" ) choix2="3" cl+=" une bibliothèque"; break ;;
  "une armoire" ) choix2="4" cl+=" une armoire"; break ;;
esac
done

cl+="\ncouleur : "
echo "Voulez vous une couleur spécifique ?"
select yn in "Oui" "Non";do
case $yn in
   Oui )  choix3="1" ; break ;;
   Non )  choix3="2" cl+=" non"; break ;;
esac
done



if [ "$choix3" == "1" ]
then
echo "De quelle couleur ?"
select yn in "noir" "blanc" "rose" "rouge";do
  case $yn in
    "noir" ) choix4="1" cl+=" noir"; break ;;
    "blanc" ) choix4="2" cl+=" blanc"; break ;;
    "rose" ) choix4="3" cl+=" rose"; break ;;
    "rouge" ) choix4="4" cl+=" rouge"; break ;;
  esac
done
else
  cl+="vous n'avez choisit de couleurs";
fi


cl+="\nvotre tranche de prix : "

echo "Avez vous un prix ?"
select yn in "0 - 49 euros" "50 - 99" "100 ++";do
case $yn in
  "0 - 49 euros" ) choix5="1" cl+=" 0 - 49 euros"; break ;;
  "50 - 99" ) choix5="2" cl+=" 50 - 99"; break ;;
  "100 ++" ) choix5="3" cl+=" 100 ++"; break ;;
esac
done

cl+="\ngarantie : "
if [ "$choix5" == "3" ] || [ "$choix5" == "2" ]
then
echo "vouler vous prendre une garantie ? IMPORTANT garantie à tout problème";
select yn in "Oui" "Non";do
  case $yn in
     Oui )  choix6="1" cl+="oui"; break ;;
     Non )  choix6="2" cl+="non"; break ;;
  esac
done
fi

if [ "$choix6" == "2" ]
then
echo " vous n'avez pas pris de garantie êtes vous sur ? "
select yn in "Oui" "Non";do
case $yn in
   Oui )  choix7="1" ; break ;;
   Non )  choix7="2" ; break ;;
esac
done
fi

if [ $choix5 == "1" ]
then
cl+="vous n'avez pas pris de garantie"
fi

cl+="\nlieux d'enoie : "
echo "lieux d'envoie "
select yn in "europe" "usa" "autre";do
case $yn in
   "europe" )  choix8="1" cl+=" europe"; break ;;
   "usa" )  choix8="2" cl+="  usa"; break ;;
   "autre" )  choix8="3" cl+=" autre"; break ;;
esac
done

if [ "$choix8" == "1" ]
then
echo "choissisez votre pays : "
cl+="\nchoissisez votre lieux : "
select yn in "france" "espagne" "allemagne" "autre";do
case $yn in
  "france" )  choix9="1" cl+=" france"; break ;;
  "espagne" )  choix9="2" cl+=" espagne"; break ;;
  "allemange" )  choix9="2" cl+=" allemange"; break ;;
  "autre" )  choix9="2" cl+=" autre"; break ;;
esac
done
fi


if [ "$choix8" == "2" ]
then
echo "choissisez votre lieux  "
cl+="\nchoissisez votre lieux :"
select yn in "north usa" "south usa" "weast usa" "east usa";do
case $yn in
  "north usa" )  choix10="1" cl+=" north usa"; break ;;
  "south usa" )  choix10="2" cl+=" south usa"; break ;;
  "weast usa" )  choix10="2" cl+=" weast usa"; break ;;
  "east usa" )  choix10="2" cl+=" east usa"; break ;;
esac
done
fi


cl+="\nmoyen de financement :"
echo "moyen de financement  "
select yn in "carte" "crédit" ;do
case $yn in
   "carte" )  choix11="1" cl+=" carte"; break ;;
   "crédit" )  choix11="2" cl+=" crédit" ; break ;;
esac
done

cl+="\n"

printf "$cl";




CODE FUN :

#! /bin/bash

g=$(tput setaf 2) # Green
y=$(tput setaf 3) # Yellow
b=$(tput setaf 4) # Blue
p=$(tput setaf 5) # Purple
c=$(tput setaf 6) # Cyan
w=$(tput setaf 7) # White
n=$(tput sgr0) # Text reset

echo -e "\033[31m           0000\033[0m_____________0000________0000000000000000__000000000000000000+\n\033[31m         00000000\033[0m_________00000000______000000000000000__0000000000000000000+\n\033[31m        000\033[0m____000_______000____000_____000_______0000__00______0+\n\033[31m       000\033[0m______000_____000______000_____________0000___00______0+\n\033[31m      0000\033[0m______0000___0000______0000___________0000_____0_____0+\n\033[31m      0000\033[0m______0000___0000______0000__________0000___________0+\n\033[31m      0000\033[0m______0000___0000______0000_________000___0000000000+\n\033[31m      0000\033[0m______0000___0000______0000________0000+\n\033[31m       000\033[0m______000_____000______000________0000+\n\033[31m        000\033[0m____000_______000____000_______00000+\n\033[31m         00000000\033[0m_________00000000_______0000000+\n\033[31m           0000\033[0m_____________0000________000000007;"
echo ""
echo ""

echo "${b}Bonjour je vais vous aider à trouver le meuble qu'il vous faut !${n}";
echo "Pour commencer, pour quelle pièce cherchez-vous un meuble ?";
choice="";

select response in "salon" "salle de bain" "chambre";do
case $response in
  "salon" ) choice="salon";break;;
  "salle de bain" ) choice="salle de bain";break;;
  "chambre" ) choice="chambre";break;;
esac
done
echo -------------------------------------------------------------
echo "De quelle couleur doit être le meuble qui ira dans votre "$choice" ?";
choice2="";

select response in "blanc" "noir" "gris" "marron";do
case $response in
  "blanc" ) choice2="blanc";break;;
  "noir" ) choice2="noir";break;;
  "gris" ) choice2="gris";break;;
  "marron" ) choice2="marron";break;;
esac
done
echo -------------------------------------------------------------
echo "${b}Donc, vous voulez un meuble "$choice2" pour votre "$choice"...${n}"
echo "Et maintenant determinons la forme pour votre meuble :"
choise3="";

select response in "carré" "rond" "rectangulaire";do
  case $response in
    "carré" ) choice3="carré";break;;
    "rond" ) choice3="rond";break;;
    "rectangulaire" ) choice3="rectangulaire";break;;
  esac
done
echo -------------------------------------------------------------
echo "${b}Si je comprends bien, le meuble "$choice2" pour votre "$choice" doit être "$choice3". ${n}"

echo "Quel magasin correspond le mieux à votre personnalité ?";
magasin="";

select response in "conforama" "ikea" "but";do
case $response in
  "conforama" ) magasin="conforama";break;;
  "ikea" ) magasin="ikea";break;;
  "but" ) magasin="but";break;;
esac
done
echo -------------------------------------------------------------
echo -e "${b}D'accord, je vais voir ce que "$magasin" a à vous proposer, mais d'abord, il me faut...${n}"

read -p 'Votre nom : ' NOM;
read -p 'Votre prénom : ' Prenom;
read -p 'Votre adresse : ' Adresse;

echo -------------------------------------------------------------

echo "Nous allons récapituler votre SUPER MEGA GENIALE commande. Vous êtes Monsieur/Madame "$NOM" "$Prenom" et vous habitez à "$Adresse"."
echo "Vous êtes à la recherche d'un meuble "$choice2", "$choice3", pour votre "$choice"."
echo "(Au cas où on ne l'aurait pas assez répêté...)"
echo -------------------------------------------------------------
echo "Validez-vous la recherche du meuble "$choice2", "$choice3", pour votre "$choice" ?"
echo "(Promis, c'est la dernière fois qu'on vous le demande !)";
choix=""

select response in "oui" "non";do
case $response in
  "oui" ) choix="oui";break;;
  "non" ) choix="non";break;;
esac
done

if [ "$choix" == "oui" ]
then
echo -e "Je vous propose le \033[31;1;4;5;7mARCHTUNGARFATI\033[0m de chez "$magasin" ! ${p}Heureux ? Revenez-nous voir !${n}"
else
echo "${p}Merci pour la perte de temps, à jamais !${n}"
fi


Sujet 3 :
La croix rouge vous demande de mettre en place une application bash pour permettre de transmettre les bons réflexes à avoir en cas d’accident.
Vous devrez mettre en place un questionnaire à choix multiple qui permettra de determiner la blessure et l’action a réaliser.
Les questions devront être précisées, et les choix décisifs devront être précisés.
Un minimum de 10 questions devra être mis en place, utilisant toutes les structures et les éléments de bash que nous avons vu.
Il faudra trouver également une solution pour colorer le texte affiché, et pour afficher des images au format ASCII.
Pensez à utiliser des variables et à proposer une experience la plus interactive possible.

inscrits:
Paul-Edouard, Julie, Antoine, Kevin, Simon
le codeshare qui sera beaucoup trop compliqué et chiant:
https://codeshare.io/G6mKOk




EN PLUS :
Si vous avancez bien, n'hesitez pas a creuser du coté de sed pour tester la creation et l'insertion de données dans un fichier de configuration
Et si vous avancez vraiment bien, une animation en Ascii art serait parfaite.
Profitez de cet atelier pour tester des choses. En formation on peut se permettre de se planter sans consequence. J'apprecierai toujours plus le travail
de quelqu'un qui a voulu aller plus loin et qui s'est planté que celui qui aura fait le minimum vital.
