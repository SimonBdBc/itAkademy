<?php

require_once('./templates/head.html');
require_once('./templates/foot.html');

$results = 0;
if($_GET["mada"] === "antananarivo"){
  $results = $results + 1;
} else {
  $results = $results;
}
if($_GET["namb"] === "windhoek"){
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



echo "Vous avez eu " . $results . " bonnes réponses.<br>";
if($results<5){
  echo "LOOSER !";
}else if($results>4 && $results<8){
  echo "Not bad...";
}else if($results>7 && $results<10){
  echo "Good Game !";
}else if($results=10){
  echo "PERFECT !!!";

}
