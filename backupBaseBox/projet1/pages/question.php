<?php
  require_once('./createForm.php');
  ?>
<head>
  <meta charset="utf-8">
  <title>Capitales</title>
  <link rel="stylesheet" href="../css/style.css" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
</head>

<p><br><?php echo $_GET['prenom']; ?></p>
<h2>Trouvez la bonne capitale :</h2><br>
<form action="../result.php">
      Madagascar :<br>
      <select name="mada">
        <option value="empty"> --- </option>
        <option value="antananarivo">Antananarivo</option>
        <option value="mbabane">Mbabane</option>
      </select><br>
      Namibie :<br>
      <select name="namb">
        <option value="empty"> --- </option>
        <option value="windhoek">Windhoek</option>
        <option value="reykjavik">Reykjavik</option>
      </select><br>
      Kirghikiztan :<br>
      <select name="kirg">
        <option value="empty"> --- </option>
        <option value="amman">Amman</option>
        <option value="bichkek">Bichkek</option>
      </select><br>
      Puerto Rico :<br>
      <select name="puer">
        <option value="empty"> --- </option>
        <option value="gaborone">Gaborone</option>
        <option value="sanJuan">San Juan</option>
      </select><br>
      Nicaragua :<br>
      <select name="nica">
        <option value="empty"> --- </option>
        <option value="tegulcigalpa">Tegulcigalpa</option>
        <option value="anagua">Managua</option>
      </select><br>
      Hong Kong :<br>
      <select name="kong">
        <option value="empty"> --- </option>
        <option value="hongKong">Hong Kong</option>
        <option value="pekin">Pekin</option>
      </select><br>
      Canada :<br>
      <select name="cana">
        <option value="empty"> --- </option>
        <option value="montréal">Montreal</option>
        <option value="ottawa">Ottawa</option>
      </select><br>
      Hongrie :<br>
      <select name="grie">
        <option value="empty"> --- </option>
        <option value="budapest">Budapest</option>
        <option value="bucarest">Bucarest</option>
      </select><br>
      Maroc :<br>
      <select name="maro">
        <option value="empty"> --- </option>
        <option value="marrakech">Marrakech</option>
        <option value="rabat">Rabat</option>
      </select><br>
      Lettonie :<br>
      <select name="lett">
        <option value="empty"> --- </option>
        <option value="riga">Riga</option>
        <option value="skopje">Skopje</option>
      </select><br><br>
      <input type="submit" value="Envoyer">
  </form>
