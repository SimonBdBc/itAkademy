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
      echo openForm("./pages/question.php");

      echo createSubmit("Start");

      echo closeTag("form");
      ?>
    <img src="./image/drap1.png">

  </body>
</html>
