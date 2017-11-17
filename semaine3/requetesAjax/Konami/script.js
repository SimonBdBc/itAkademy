
$(document).ready(function(){
  function searchIsbn(){
    var isbn = $('#my-isbn').val();
    var regex = /[0-9]{10}/;
    if(isbn !== "" && regex.test(isbn) && isbn.length == 10){
      $.get("http://openlibrary.org/api/books?bibkeys=" + isbn + "&format=json&jscmd=data", function(data) {
        var title = data[isbn].title;
        var author = data[isbn].authors[0].name;
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
        $('#first-book').html('');
        $("#first-book").append('<h3>' + title + '</h3>');
        $("#first-book").append('<p>' + author + '</p>');
        $("#first-book").append('<p>' + publicationDate+ '</p>');
        $("#first-book").append('<img src="' + cover + '">');
      });
    }
    else{
      alert('No value inside input, noob!');
    }
  }
  $('#search-isbn').on('click', function(){
    searchIsbn();
  });
  $(document).keyup(function(e) {
    if(e.keyCode == 13 && $('#my-isbn').is(":focus")) {
      searchIsbn();
    }
  });
});
