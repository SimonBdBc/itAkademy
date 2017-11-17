<?php
  require_once('./createForm.php');
  ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Mon Questionnaire</title>
    <link rel="stylesheet" href="../css/style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  </head>
  <body>
    <h1>Quiz sur les capitales</h1>
    <?php
      echo openForm("./result.php");
      echo createSelect("country", "Madagascar", [
        [
          "value" => "empty",
          "content" => "--",
        ],
        [
          "value" => "antananarivo",
          "content" => "Antananarivo",
        ],
        [
          "value" => "mbabane",
          "content" => "Mbabane",
        ],
      ]);
      echo createSelect("country", "Namibie", [
        [
          "value" => "empty",
          "content" => "--",
        ],
        [
          "value" => "windhoek",
          "content" => "Windhoek",
        ],
        [
          "value" => "reykjavik",
          "content" => "Reykjavik",
        ],
      ]);
      echo createSelect("country", "Kirghikiztan", [
        [
          "value" => "empty",
          "content" => "--",
        ],
        [
          "value" => "amman",
          "content" => "Amman",
        ],
        [
          "value" => "bichkek",
          "content" => "Bichkek",
        ],
      ]);
      echo createSubmit("Résultats");

      echo closeTag("form");



    ?>

  </body>
</html>
