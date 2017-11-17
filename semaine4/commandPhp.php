<?php

//echo "coucou "; //ceci est un commentaire

/*
commentaires
commentaires
*/

  $myVar = true; //booleans
  $myInteger = 5; //entier chiffre sans virgule
  $myFloat = 1.2; //chiffre à virgule
  $myString1 = 'Ceci est une string';
  $myString2 = "Ceci est aussi une string";
  $myArray1 = [
    "valeur1" => "contenu1",
    "valeur2" => "contenu2",
    "valeur3" => "contenu3",
  ];
  $myArray2 = array(
    "contenu1",
    "contenu2",
    "contenu3",
  );
  //$myNull = NULL; //variable NULL
  //$myEmptyVar; //variable NULL
  //var_dump($myArray1["valeur1"]); //affiche la variable

  //$1 = "ok"; //invalide variable
  //$_1 = "ok"; //valide
  //$a1 = "ok"; //valide

  $var ="coucou";
  $secondVar ="et bonjour";
  $result = $var ." ". $secondVar;

  $var1 ="coucou";
  $var1 = "coucou" . $var1;

  //var_dump($result,$var1);

  define("MACONSTANTE", "Ma valeur");
  //var_dump(MACONSTANTE)

  $number1 = 10;
  $number2 = 245;
  //var_dump($number1 % $number2); //reste de la division
  //var_dump($number1 ** $number2); //puissance

  //&& les deux conditions doivent être bonnes
  //|| au moins une des deux bonnes

  if($number1 === $number2) {
    echo "c'est bon";
  } else {
    echo "c'est pas bon";
  };

  if($number1 === $number2) {
    echo "c'est bon";
  } else if(true){
    echo "c'est pas bon";
  };
