<?php
//une ouverture de balise form
  //definir une action
function openForm($action = "#")
{
  return "<form action='" . $action . "'>";
}
//une fermeture de balise form
function closeTag($tag)
{
  return "</" . $tag . ">";
}
//mise en place d'un input
  //avec un label
/*
$type = string
$name = string
$value = string
$label = string
*/
function createInput($type, $name, $value = "", $label)
{
  return "<label>" . $label . "</label><input type='" . $type . "' name= '" . $name . "' value= '" .$value. "'><br>";
}


//mise en place d'un select
function createSelect($name, $label, $options)
{
    $html= "<label>" . $label ."</label>";
    $html.= "<select name='" . $name ."'>";
    foreach ($options as $key => $value) {
      $html .= "<option value'" . $value['value'] . "'>" . $value['content'] . "</option>";
    }
    $html .= "</select>";
    return $html;
}
//generer un bouton submit
function createSubmit($value){
  return "<input type='submit' value='" . $value . "'>";
}
