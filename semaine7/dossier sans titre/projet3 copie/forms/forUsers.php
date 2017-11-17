<?php

?>

<form action="../validates/valUsers.php" method="POST">
  <label for="firstname">Prenom</label>
  <input id="firstname" type="text" value='<?= (isset($_POST["firstname"]))? $_POST["firstname"]: ""?>' name="firstname">
  <br>
  <?php
  if(isset($errors['firstname'])){
    echo $errors['fistname'] . "<br>";
  }
  ?>
  <label for="lastname">Nom</label>
  <input id="lastname" type="text" value='<?= (isset($_POST["lastname"]))? $_POST["lastname"]: ""?>' name="lastname">
  <br>
  <?php
  if(isset($errors['lastname'])){
    echo $errors['lastname'] . "<br>";
  }
  ?>
  <label for="email">Email</label>
  <input id="email" type="text" value='<?= (isset($_POST["email"]))? $_POST["email"]: ""?>' name="email">
  <br>
  <?php //if(isset($errors['email'])) { echo $errors['email']; } ?>
  <?= (isset($errors['email']))? $errors['email'] . "<br>": "" ?>
  <label for="password">Password</label>
  <input id="password" type="text" name="password">
  <br>
  <?php
  if(isset($errors['password'])){
    echo "<ul>";
    foreach ($errors['password'] as $value) {
      echo "<li>$value</li>";
    }
    echo "</ul>";
  };
 ?>
  <label for="repassword">Re-Password</label>
  <input id="repassword" type="text" name="repassword">
  <br>
  <?php
  if(isset($errors['repassword'])){
    echo $errors['repassword'] . "<br>";
  }
   ?>
  <input type="submit" name="submit">
</form>
