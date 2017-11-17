<?php
//ouvre une connexion a un serveur mySQL
$host='127.0.0.1'; $user='root'; $passwd="0000"; $dbname="dwm8";
$link = mysqli_connect($host, $user, $passwd, $dbname);

//infos renseigné par l'utilisateur
$email="simon@mail.com";
$passwd= md5("0000");

//creation de la query
$query ="INSERT INTO `users` (`id`, `email`, `password`)
          VALUES (NULL, $email, $passwd)";
