$(document).ready(function(){
  // JQuery methods go here

  $.get("https://anapioficeandfire.com/api/characters/547", function(data) {
    $("h2").html(data.name);
    $($("h3")[0]).html(data.aliases)
    $($("h3")[1]).html("Born :"+ data.born)
    $($("h3")[2]).html("Died :"+ data.died)
  });
});
