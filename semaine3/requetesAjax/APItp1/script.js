
$(document).ready(function(){
  $('#button1').on('click', function(){
    $.get('https://anapioficeandfire.com/api/characters', function(data){
      var contentList = "<ul>";
    $.each(data, function(index, value){
      contentList += "<li>" + value.aliases[0] + "</li>";
      $('main').html(contentList);
    });
  });
  });
  $('#button2').on('click', function(){
    $.get('https://anapioficeandfire.com/api/houses', function(data){
      var contentList = "<ul>";
    $.each(data, function(index, value){
      contentList += "<li>" + value.name + "</li>";
      $('main').html(contentList);
    });
  });
  });
  $('#button3').on('click', function(){
    $('main').html('');
  });
  $('#charList').on('click', 'li', function() {
    getOneCharInformation($(this));
  })
});
