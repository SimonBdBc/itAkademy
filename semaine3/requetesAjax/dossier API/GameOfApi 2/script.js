$(document).ready(function(){

  // Une fonction qui me permet de charger un personnage
  function getOneCharInformation(element) {
    // Je recupere l'url du personnage via data-*
    var url = element.data('url');
    // Je refais une requete avec l'url
    $.get(url, function(data) {
      // Je recupere les valeurs à afficher
      var name = data.name;
      var born = data.born;
      var isDead = data.died;
      var culture = data.culture;
      var alias = data.aliases[0];

      // Je les ajoute à la liste
      $('#char-name').html('Nom : ' + name);
      $('#char-born').html('Naissance : ' + born);
      $('#char-is-dead').html('Mort : ' + isDead);
      $('#char-alias').html('Alias : ' + alias);
      $('#char-culture').html('Culture : ' + culture);
      $('.popup-container').removeClass('hidden');
    })
  }
  // On fait un appel Ajax sur notre API Game of Thrones
  $.get('https://anapioficeandfire.com/api/characters?page=13', function(data) {
    // Je crée une var qui va contenir ma liste complete
    var htmlContent = '<ul class="list-no-style list-menu">';
    // J'utilise each pour iterer dans mon objet data, qui contient une liste de N personnages
    $.each(data, function(index, value) {
      // Index contient la clé (0, 1, 2)
      // Value contient l'objet contenant les infos sur mon personnage
      // J'ajoute le premier alias de chaque personnage dans ma liste

      // Si le personnage ne possede pas de nom
      if(value.name == "") {
        // Si le personnage possede un alias
        if(value.aliases[0] != "") {
          htmlContent += "<li data-url='" + value.url + "'>" + value.aliases[0] + "</li>";
        }
      // Si le personnage a un nom
      } else {
        htmlContent += "<li data-url='" + value.url + "'>" + value.name + "</li>";
      }
      // Dans ce cas la, si le personnage ne possede ni nom ni alias, on le saute (héhéhé)
    });
    htmlContent += "</ul>";
    // J'ajoute le contenu de ma liste à ma section
    $('#charList').html(htmlContent);
    console.log('Implementation initiale des persos');
  });
  // Quand on click sur un element de la liste des personnages
  $('#charList').on('click', 'li', function() {
    getOneCharInformation($(this));
  })
  // Quand on click sur notre popup, elle disparait pour permettre de continuer les actions
  $('.popup-container').on('click', function() {
    $('.popup-container').addClass('hidden');
  })
});
