<?php
session_start();

function displayCase($x, $y)
{
return"<div style='border:1px solid black; width:48px; height:48px;'><img style='width:100%; height:100%;' src='./grass1.jpg'></div>";
}
function displayObject($x, $y)
{
  return"<div style='border:1px solid black; width:48px; height:48px;'><img style='width:100%; height:100%;' src='./link.png'></div>";
}
//var_dump($_SESSION["phpGame"]);die;
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title><?php echo $_SESSION['phpGame']['gameName'] ?></title>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
  </head>
  <body style="display:flex;width:<?php echo ($_SESSION['phpGame']['axes']['x'] * 50) ?>px;flex-wrap:wrap; justify-content:center">
    <?php
    //for qui ajoute chaque incrémentation de y sur l'axe y
      for ($y=1; $y <= $_SESSION['phpGame']['axes']['y'] ; $y++) {
        //for qui ajoute chaque incrémentation de x sur l'axe x
        for ($x=1; $x <= $_SESSION['phpGame']['axes']['x']; $x++) {
          //si le posPlayer n'est pas défini
          if(!isset($_SESSION['posPlayer'])) {
            //si la posPlayer est égale à 1 sur l'axe y et 1 sur l'axe x
            if($y == 1 && $x == 1) {
              //je stock la position du joueur en session
              $_SESSION['posPlayer'] = array(
                "x" => $x,
                "y" => $y,
              );
              //affiche la position du posPlayer en plateau
              echo displayObject($x, $y);
            } else {
              //sinon j'affiche un carré neutre en plateau
              echo displayCase($x, $y);
            }
            //si le joueur est deja stocker en session et que ca correspond a sa position sur le generateur
          } else if($y == $_SESSION['posPlayer']['y'] && $x == $_SESSION['posPlayer']['x']) {
            //j'affiche le heros
            echo displayObject($x, $y);
          } else {
            if($x == $_SESSION['phpGame']['victory']['x'] && $y == $_SESSION['phpGame']['victory']['y']) {
              echo "<div style='border:1px solid black; width:48px; height:48px;'><img style='width:100%; height:100%;' src='./key.png'></div>";
            } else if($x == $_SESSION['phpGame']['loose']['x'] && $y == $_SESSION['phpGame']['loose']['y']) {
              echo "<div style='border:1px solid black; width:48px; height:48px;'><img style='width:95%; height:95%; padding:1px 0 0 1px' src='./boss.png'></div>";
            } else {
              echo displayCase($x, $y);
            }
          }
      }
    }
    if($_SESSION['phpGame']['victory']['x'] == $_SESSION['posPlayer']['x'] && $_SESSION['posPlayer']['y'] == $_SESSION['phpGame']['victory']['y']){
      echo 'Victoire !';
    }
    else if($_SESSION['phpGame']['loose']['x'] == $_SESSION['posPlayer']['x'] && $_SESSION['posPlayer']['y'] == $_SESSION['phpGame']['loose']['y']){
      echo 'You loose !';
    }
    ?>
    <form action="./src/reset.php" style="">
      <input type="hidden" value="on">
      <input type="submit" value="reset">
    </form>
    <form action="./src/move.php" method="POST">
      <input type="hidden" name="direction" value="up">
      <input type="submit" value="&#8593;">
    </form>
    <form action="./src/move.php" method="POST">
      <input type="hidden" name="direction" value="down">
      <input type="submit" value="&#8595;">
    </form>
    <form action="./src/move.php" method="POST">
      <input type="hidden" name="direction" value="left">
      <input type="submit" value="&#8592;">
    </form>
    <form action="./src/move.php" method="POST">
      <input type="hidden" name="direction" value="right">
      <input type="submit" value="&#8594;">
    </form>
  </body>
</html>
