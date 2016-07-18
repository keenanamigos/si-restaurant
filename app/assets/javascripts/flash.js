$(document).ready(ready);
$(document).on('page:load', ready);

function clearFlash() {
	$('#flash').animate({opacity:'0'}, 1500);
}

var ready = function() {
	setTimeout(clearFlash, 1000) //Flash and then fade out
}