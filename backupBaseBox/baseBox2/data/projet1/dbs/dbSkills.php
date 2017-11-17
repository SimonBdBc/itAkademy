<?php

function connect(){
  $connexion = mysqli_connect('localhost', 'root', '0000', 'dwm8', 3306);
  return $connexion;
}

if(isset($_POST['submit'])){
$data['label'] = strtolower($_POST['label']);
$data['level'] = ($_POST['level']);
return insertUser($data);
};

function insertUser($data){

$connexion = connect();
$label = $data['label'];
$level = $data['level'];

$insert = "INSERT INTO `skills` (`id`, `user_id`, `label`, `level`) VALUES (NULL, NULL, '$label', '$level');";

$requete = mysqli_query($connexion, $insert);
return $requete;
}
