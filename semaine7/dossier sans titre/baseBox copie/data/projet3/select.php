<?php

//Ouvre une connexion à un serveur MySQL dans l'objet PDO
$dsn = "mysql:dbname=dwm8;host=127.0.0.1;charset=UTF8";
$username = "root";
$password = "0000";
$pdo = new PDO($dsn, $username, $password);

$offset = 1;
$limit = 10;

$('.suivant').click(function() {

};


//Création de la query
$query= "SELECT `id`, `name`, `email`, `birthday` FROM `bootTab` LIMIT $limit OFFSET $offset;";

//Envoie de la query à mysql
$results = $pdo->query($query);

echo "<table class="."table table-striped table-hover table-bordered".">";
echo "<thead class="."thead-dark".">";
echo "<tr>";
echo   "<th>#</th>";
echo   "<th>Name</th>";
echo   "<th>Email</th>";
echo   "<th>Birthday</th>";
echo "</tr>";
echo "</thead>";
echo "<tbody>";

foreach ($results as $row) {
  echo "<tr>";
  echo "<td>".$row['id']."</td>";
  echo "<td>".$row['name']."</td>";
  echo "<td>".$row['email']."</td>";
  echo "<td>".$row['birthday']."</td>";
  echo "</tr>";
};

echo "</tbody>";
echo "</table>";
