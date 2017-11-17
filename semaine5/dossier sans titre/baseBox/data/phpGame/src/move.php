<?php
session_start();
var_dump($_SESSION['posPlayer']);
echo "<br>";
var_dump($_SESSION['phpGame']);
echo "<br>";
//var_dump($_POST);die;

if($_POST['direction'] == 'up'){
  if(($_SESSION['posPlayer']['y'] - 1) > 0){
  $_SESSION['posPlayer']['y']-=1;
  header('location: ../game.php');
  }else{
    $_SESSION['posPlayer']['y'] = $_SESSION['phpGame']['axes']['y'];
    header('location: ../game.php');
  //var_dump("Pas possible !");die;
  }
}
else if ($_POST['direction'] == 'down') {
  if(($_SESSION['posPlayer']['y'] + 1) <= $_SESSION['phpGame']['axes']['y']){
  $_SESSION['posPlayer']['y']+=1;
  header('location: ../game.php');
  }else{
    $_SESSION['posPlayer']['y'] = 1;
    header('location: ../game.php');
  //var_dump("Pas possible !");die;
  }
}
else if ($_POST['direction'] == 'left') {
  if(($_SESSION['posPlayer']['x'] - 1) > 0){
  $_SESSION['posPlayer']['x']-=1;
  header('location: ../game.php');
  }else{
    $_SESSION['posPlayer']['x'] = $_SESSION['phpGame']['axes']['x'];
    header('location: ../game.php');
  //var_dump("Pas possible !");die;
  }
}
else if ($_POST['direction'] == 'right') {
  if(($_SESSION['posPlayer']['x'] + 1) <= $_SESSION['phpGame']['axes']['x']){
  $_SESSION['posPlayer']['x']+=1;
  header('location: ../game.php');
  }else{
    $_SESSION['posPlayer']['x'] = 1;
    header('location: ../game.php');
  //var_dump("Pas possible !");die;
  }
}
