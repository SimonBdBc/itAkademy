<?php
//ouvre une connexion a un serveur mySQL
$host='127.0.0.1'; $user='root'; $passwd="0000"; $dbname="dwm8";
$link = mysqli_connect($host, $user, $passwd, $dbname);

//infos renseigné par l'utilisateur
$email="simon@mail.com";
$passwd= md5("0000");

//creation de la query
$query = "SELECT `id` FROM `users`
          WHERE `email` = $email AND `password` = $passwd
          LIMIT 1;";

//envoie de la query a mysql
$result = mysqli_query($link, $query);

//transfer des donnees dans un tableau associatif
//par rapport aux colones de la query
$array = mysqli_fetch_assoc($result);

//stockage en session
session_start();
$_SESSION['user'] = $array['id'];

var_dump('identifiant')
