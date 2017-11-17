/*
$(document).ready(function(){

var kkeys = [];
var konami = "38,38,40,40,37,39,37,39,66,65";

$(document).keydown(function(e) {
    kkeys.push(e.keyCode);
    if (kkeys.toString().indexOf(konami) >= 0)
    {
        kkeys = [];
        $(".konami").fadeToggle(1000);
    }
});
});
*/

$(document).ready(function(){

//Haut, haut, bas, bas, gauche, droite, gauche, droite, B, A

	var k = [38, 38, 40, 40, 37, 39, 37, 39, 66, 65],
	n = 0;

	$(document).keydown(function (e) {
	    if (e.keyCode === k[n++]) {
	        if (n === k.length) {
		        $('#konami').append('<img id="konami" src="https://media.tenor.com/images/d6ed47fb0379408bb995eeedeae25d8b/tenor.gif">')
	            n = 0;
	            return false;
	        }
	    }
	    else {
	        n = 0;
	    }
	});

});
