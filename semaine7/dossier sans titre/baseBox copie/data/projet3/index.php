<?php
require_once 'insertInto.php';
require_once 'select.php';
 ?>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
  </head>
  <body>
    <button class="suivant" data-action="suivant">Suivant</button>
    <button class="precedent" data-action="precedent">Précédent</button>
    <form action="" method="POST">
      <label for="name">Name : </label>
        <input id="name" name="name" type="text">
      <br>
      <label for="email">Email : </label>
        <input id="email" name="email" type="text">
      <br>
      <label for="birthday">Birthday yyyy-mm-dd : </label>
        <input id="birthday" name="birthday" type="date">
      <br>
      <input name="submit" type="submit">
    </form>
  </body>
</html>
