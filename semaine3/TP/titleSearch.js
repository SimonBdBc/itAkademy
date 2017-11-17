$(document).ready(function(){

  $('#search-isbn').on('click', function(){
    var searchValue = $('#my-isbn').val();
    searchValue = searchValue.replace(/ /g, '+');
    $.get('http://openlibrary.org/search.json?title=' + searchValue +'', function(data){
      var response = JSON.parse(data);
      var htmlResponse = '<ul>';
      var isbnNumber = "";
      $.each(response.docs, function(index, value){
        $.each(value.isbn, function(index, isbn){
          if(isbn.length == 10){
            isbnNumber = isbn;
            return false;
          };
        });
        htmlResponse += '<li data-isbn=" ' + isbnNumber + '">' + value.title + '</li>';
      });
      htmlResponse += '<ul>';
      $('#results').html('');
      $('#results').append(htmlResponse);
    });
  });
});
