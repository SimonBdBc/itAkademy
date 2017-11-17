<?php

// http://php.net/manual/fr/pdo.construct.php
$dsn = "mysql:dbname=dwm8;host=127.0.0.1;charset=UTF8";
$username = "root";
$password = "0000";

$pdo = new PDO($dsn, $username, $password);

$variable = $pdo->query("SELECT * FROM `users`;");

//var_dump($variable->fetch());

foreach ($variable as $key => $value) {

};
