<?php

require_once('./templates/head.html');
require_once('./templates/foot.html');

function createSelect($name, $label, $options)
{
    $html= "<label>" . $label ."</label>";
    $html.= "<select name='" . $name ."'>";
    foreach ($options as $key => $value) {
      $html .= "<option value'" . $value['value'] . "'>" . $value['content'] . "</option>";
    }
    $html .= "</select>";
    return $html;
}


$results = 0;
if($value["mada"] === "antananarivo"){
  $results = $results + 1;
} else {
  $results = $results;
}

/*
if($_GET["nami"] === "windhoek"){
  $results = $results + 1;
} else {
  $results = $results;
}
if($_GET["kirg"] === "bichkek"){
  $results = $results + 1;
} else {
  $results = $results;
}
if($_GET["puer"] === "sanJuan"){
  $results = $results + 1;
} else {
  $results = $results;
}
if($_GET["nica"] === "anagua"){
  $results = $results + 1;
} else {
  $results = $results;
}
if($_GET["kong"] === "hongKong"){
  $results = $results + 1;
} else {
  $results = $results;
}
if($_GET["cana"] === "ottawa"){
  $results = $results + 1;
} else {
  $results = $results;
}
if($_GET["grie"] === "budapest"){
  $results = $results + 1;
} else {
  $results = $results;
}
if($_GET["maro"] === "rabat"){
  $results = $results + 1;
} else {
  $results = $results;
}
if($_GET["lett"] === "riga"){
  $results = $results + 1;
} else {
  $results = $results;
}

$imgFeu = './image/feu.jpg';

echo "Vous avez eu " . $results . " bonnes réponses.<br>";
if($results<5){
  echo "LOOSER !";
}else if($results>4 && $results<8){
  echo "Not bad...";
}else if($results>7 && $results<10){
  echo "Good Game !";
}else if($results=10){
  echo "PERFECT !!!";
  echo $imgFeu;
}
