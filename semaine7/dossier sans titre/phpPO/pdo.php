<?php

//http://php.net/manual/fr/pdo.construct.php
$dsn = "mysql:dbname=dwm8;host=127.0.0.1,charset=UTF8";
$username = "root";
$password = "0000";

$pdo = new PDO($dsn, $username, $password);

$query = "SELECT * FROM `users`;";

$result = $pdo->query($query);

var_dump($result->fetch());
