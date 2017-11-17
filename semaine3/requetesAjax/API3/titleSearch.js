$(document).ready(function(){
  $('#results').on('click', 'li', function() {
    var isbn = $(this).data('isbn');
    $.get("http://openlibrary.org/api/books?bibkeys=" + isbn + "&format=json&jscmd=data", function(data) {
      var title = data[isbn].title;
      if(data[isbn].authors === undefined) {
        var author = "john / Jane Doe";
      } else{
        var author = data[isbn].authors[0].name;
      }
      if(data[isbn].publish_date === undefined){
        var publicationDate = "no date";
        console.log("No publication date");
      }
      else{
        var publicationDate = data[isbn].publish_date;
      }
      if(data[isbn].cover === undefined){
        var cover = "http://fakeimg.pl/350x200/?text=" + title + "(not found)" + "";
        console.log('no cover');
      }
      else{
        var cover = data[isbn].cover.large;
      }
      $('#book').html('');
      $("#book").append('<h3>' + title + '</h3>');
      $("#book").append('<p>' + author + '</p>');
      $("#book").append('<p>' + publicationDate+ '</p>');
      $("#book").append('<img src="' + cover + '">');
    });

  });
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
