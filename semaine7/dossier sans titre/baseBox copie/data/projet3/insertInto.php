<?php
//Ouvre une connexion à un serveur MySQL dans l'objet PDO
$dsn = "mysql:dbname=dwm8;host=127.0.0.1;charset=UTF8";
$username = "root";
$password = "0000";
$pdo = new PDO($dsn, $username, $password);

//Information renseigné par l'utilisateur, formulaire de connexion
$name = "simon1";
$email = "simon@gmail.com";
$birthday = "1990-02-01";

//Création de la query
$query = "INSERT INTO `bootTab` (`id`, `name`, `email`, `birthday`)
          VALUES (NULL, '$name', '$email', '$birthday');";

$result = $pdo->query($query);

if($result == true) {
  echo "Inscription réussi<br>";
  //Retourne l'identifiant automatiquement généré
  //par la dernière requête
  $id = $pdo->lastInsertId();
  echo "Enregistrement effectué à l'identifiant : " . $id;
}
