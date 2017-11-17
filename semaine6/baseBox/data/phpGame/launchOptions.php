<?php  ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Options</title>
  </head>
  <body>
    <form action="./src/saveOptions.php">
      <label>Nom de la partie :</label>
      <input required type="text" name="gameName">
      <label>Axe X :</label>
      <input required type="number" name="x">
      <label>Axe Y :</label>
      <input required type="number" name="y">
      <input type="submit" value="Launch">
    </form>
  </body>
</html>
