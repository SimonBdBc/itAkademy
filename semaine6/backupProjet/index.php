<?php
  require_once('./createForm.php');
  ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Mon Questionnaire</title>
  </head>
  <body>
    <h1>Quiz sur les capitales</h1>
    <?php
      echo openForm("./monScript.php");
      echo createSelect("country", "Choisissez un pays", [
        [
          "value" => "es",
          "content" => "Espagne",
        ],
        [
          "value" => "jp",
          "content" => "Japan",
        ],
      ]);
      echo createInput("text", "myText", "", " Mon premier input ");
      echo createInput("number", "myNumber", "", " Mon second input ");
      echo createInput("radio", "myRadio", "", " Ma radio ");
      echo createInput("checkbox", "myCheckbox", "", " Ma Checkbox ");
      echo createSubmit("Envoyer");
      echo closeTag("form");
    ?>

  </body>
</html>
