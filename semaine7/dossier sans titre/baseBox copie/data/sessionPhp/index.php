<?php
session_start();
if (isset($_SESSION['directions'])){
  echo "<p>" . $_SESSION['directions'] . "</p>";
}
 ?>
<form action="./script.php" method="POST">
 <input type="hidden" name="direction" value="delete">
 <input type="submit" value="&#215;">
</form>
<form action="./script.php" method="POST">
  <input type="hidden" name="direction" value="&#8593;">
  <input type="submit" value="&#8593;">
</form>
<form action="./script.php" method="POST">
  <input type="hidden" name="direction" value="&#8595;">
  <input type="submit" value="&#8595;">
</form>
<form action="./script.php" method="POST">
  <input type="hidden" name="direction" value="&#8592;">
  <input type="submit" value="&#8592;">
</form>
<form action="./script.php" method="POST">
  <input type="hidden" name="direction" value="&#8594;">
  <input type="submit" value="&#8594;">
</form>
