/*
$(document).ready(function(){
  $.get("http://openlibrary.org/api/books?bibkeys=2070415937,2070415945,2070417751&format=json&jscmd=data", function(data) {
    $.each(data, function(index, value){

      var title = value.title;
      var author = value.authors[0].name;
      var publicationDate = value.publish_date;
      var cover = value.cover.large;


      $('#first-book').append('<h3>' + title + '</h3>');
      $('#first-book').append('<p>' + author + '</p>');
      $('#first-book').append('<p>' + publicationDate + '</p>');
      $('#first-book').append('<img src="' + cover + '">');
    });
  });
});
*/













 $('#search-isbn').on('click', function() {
    var isbn = $('#my-isbn').val();
    var regex = /[0-9]{10}/;
    if(isbn !== "" && regex.test(isbn) && isbn.length == 10) {
      $.get("http://openlibrary.org/api/books?bibkeys=" + isbn + "&format=json&jscmd=data", function(data) {

        var title = data[isbn].title;
        var author = data[isbn].authors[0].name;


        if(data[isbn].publish_date === undefined){
          var publicationDate = "no date";
          console.log("No publication date");
        } else {
        var publicationDate = data[isbn].publish_date;
      }
        if(data[isbn].cover === undefined){
          var cover = "http://fakeimg.pl/350x200/?text=" + title + "(not found)" + "";
          console.log('no cover');
        } else {
        var cover = data[isbn].cover.large;
      }

        $('#first-book').html('');
        $("#first-book").append('<h3>' + title + '</h3>');
        $("#first-book").append('<p>' + author + '</p>');
        $("#first-book").append('<p>' + publicationDate+ '</p>');
        $("#first-book").append('<img src="' + cover + '">');
        });
    } else {
      alert('No value inside input, noob!');
    }
  });
