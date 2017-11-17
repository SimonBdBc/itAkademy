Antony et Morgan :
#! /bin/bash
read -p 'Jour naissance' day;
read -p 'Mois naissance' month;
read -p 'Année naissance' year;

currentDay=$(date +%d);
currentMonth=$(date +%m);
currentYear=$(date +%Y);

year=$(($currentYear - $year));

#Si le mois de naissance est inferieur au mois en cours
if (($month < $currentMonth))
then
  #Do nothing
  year=$year;
else
  #Si le mois de naissance est egal au mois actuel
  if (($month == $currentMonth))
  then
    #Si le jour de naissance est inferieur ou egal au jour actuel
    if (($day <= $currentDay))
    then
      #Do nothing
      year=$year;
    else
      #On enleve un an à l'age
      year=$(($year - 1))
    fi
  fi
fi
#On affiche l'age
echo $year;

