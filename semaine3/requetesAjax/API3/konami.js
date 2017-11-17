$(document).ready(function(){

var kkeys = [];
var konami = "38,38,40,40,37,39,37,39,66,65,13";
$(document).keydown(function(e) {
    kkeys.push(e.keyCode);
    if (kkeys.toString().indexOf(konami) >= 0)
    {
        kkeys = [];
        $(".konami").fadeToggle(1000);
    }
});
});
