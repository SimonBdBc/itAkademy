<?php
session_start();
if($_POST['direction'] == 'delete'){
  unset($_SESSION['directions']);
}else{
  if(!isset($_SESSION['directions'])){
    $_SESSION['directions'] = $_POST['direction'];
  }else{
    $_SESSION['directions'] .= $_POST['direction'];
  }
}
header('location: index.php');
//var_dump($_SESSION['directions']);die;
 ?>
