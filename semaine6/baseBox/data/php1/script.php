<?php

  //si la SuperGlobal $_GET contient plus de 0 elements
  if(count($_GET) !==0){
  //On execute le code comme d'habitude
  $documentState = file_exists('./pages/'. $_GET['myPage'] . '.html');
  require_once('./templates/head.html');
  if($documentState){
    //si le document existe
    require_once('./pages/'. $_GET['myPage'] . '.html');
  } else {
    //si le document n'existe pages
    require_once('./pages/404.html');
    }
    require_once('./templates/foot.html');
  } else {
    //sinon on affiche la page 404
    require_once('./templates/head.html');
    require_once('./pages/404.html');
    require_once('./templates/foot.html');
  }
