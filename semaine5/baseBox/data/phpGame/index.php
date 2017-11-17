<?php
session_start();
if(isset($_SESSION['phpGame'])){
  header ('location: game.php');
}else{
  header('location: launchOptions.php');
}
