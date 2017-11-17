<?php
  require_once('../createForm.php');
  require_once('../templates/head.html');
  require_once('../templates/foot.html');
  ?>


<h2>Trouvez la bonne capitale :</h2><br>
<?php
  echo openForm("./createForm.php");
  echo createSelect("pays", "Madagascar", [
    [
      "value" => "empty",
      "content" => "--",
    ],
    [
      "value" => "antananarivo",
      "content" => "Antananarivo",
    ],
    [
      "value" => "mbabane",
      "content" => "Mbabane",
    ],
  ]);
  echo createSelect("pays", "Namibie", [
    [
      "value" => "empty",
      "content" => "--",
    ],
    [
      "value" => "windhoek",
      "content" => "Windhoek",
    ],
    [
      "value" => "reykjavik",
      "content" => "Reykjavik",
    ],
  ]);
  echo createSelect("pays", "Kirghikiztan", [
    [
      "value" => "empty",
      "content" => "--",
    ],
    [
      "value" => "amman",
      "content" => "Amman",
    ],
    [
      "value" => "bichkek",
      "content" => "Bichkek",
    ],
  ]);
  echo createSelect("pays", "Puerto Rico", [
    [
      "value" => "empty",
      "content" => "--",
    ],
    [
      "value" => "gaborone",
      "content" => "Gaborone",
    ],
    [
      "value" => "sanJuan",
      "content" => "San Juan",
    ],
  ]);
  echo createSelect("pays", "Nicaragua", [
    [
      "value" => "empty",
      "content" => "--",
    ],
    [
      "value" => "tegulcigalpa",
      "content" => "Tegulcigalpa",
    ],
    [
      "value" => "anagua",
      "content" => "Managua",
    ],
  ]);
  echo createSelect("pays", "Hong Kong", [
    [
      "value" => "empty",
      "content" => "--",
    ],
    [
      "value" => "hongKong",
      "content" => "Hong Kong",
    ],
    [
      "value" => "pekin",
      "content" => "Pekin",
    ],
  ]);
  echo createSelect("pays", "Canada", [
    [
      "value" => "empty",
      "content" => "--",
    ],
    [
      "value" => "montreal",
      "content" => "Montréal",
    ],
    [
      "value" => "ottawa",
      "content" => "Ottawa",
    ],
  ]);
  echo createSelect("pays", "Hongrie", [
    [
      "value" => "empty",
      "content" => "--",
    ],
    [
      "value" => "budapest",
      "content" => "Budapest",
    ],
    [
      "value" => "bucarest",
      "content" => "Bucarest",
    ],
  ]);
  echo createSelect("pays", "Maroc", [
    [
      "value" => "empty",
      "content" => "--",
    ],
    [
      "value" => "marrakech",
      "content" => "Marrakech",
    ],
    [
      "value" => "rabat",
      "content" => "Rabat",
    ],
  ]);
  echo createSelect("pays", "Lettonie", [
    [
      "value" => "empty",
      "content" => "--",
    ],
    [
      "value" => "riga",
      "content" => "Riga",
    ],
    [
      "value" => "skopje",
      "content" => "Skopje",
    ],
  ]);



  echo createSubmit("Résultats");

  echo closeTag("form");



?>
