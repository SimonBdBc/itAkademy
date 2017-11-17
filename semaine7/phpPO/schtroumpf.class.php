----The Schtroumpf Code ----
<?php
class schtroumpf {
  public $color = "Bleu";
  public $bonnet = "Bonnet neuf blanc";
  private $sexualOrientation = "heureux";

  public function __construct($metier, $passion){
    $this->metier = $metier;
    $this->passion = $passion;
    echo "Moi Schtroumpf " . $metier . "<br>";
    echo "Ma passion c'est le " . $passion . "<br>";
  }
  public function __destruct(){
    echo "Moi Schtroumpf " . $this->metier . "<br>";
    echo "je me meurt...<br>";
    echo "schtroumpfette t'es bonne, Wesh<br>";
  }

  public function sayMySexualOrientation() {
    return $this->sexualOrientation;
  }

  private function repare($bonnet) {

  }
}


$schtroumpf1 = new Schtroumpf();
echo "Il est " . $schtroumpf1->color . "<br>";
echo "Il est " . $schtroumpf1->sayMySexualOrientation();
