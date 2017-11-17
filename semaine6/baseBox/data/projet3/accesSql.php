<?php
function connect(){
  $acces = mysqli_connect('localhost', 'root', '0000', 'dwm8', 3306);
  return $acces;
}
?>
