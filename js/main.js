function flip (elemWhereIClicked) {
    if (elemWhereIClicked.classList.contains('fliped')) {
      	elemWhereIClicked.querySelector('.front').style.transform = "rotateY(0deg)"
	elemWhereIClicked.querySelector('.back').style.transform = "rotateY(-180deg)"
	elemWhereIClicked.classList.remove('fliped')
    } else {
	elemWhereIClicked.querySelector('.front').style.transform = "rotateY(180deg)"
	elemWhereIClicked.querySelector('.back').style.transform = "rotateY(0deg)"
	elemWhereIClicked.classList.add('fliped')
    }
}


$(document).ready(function(){
    $.ajax({
	dataType: "json",
	url: "test.json",
	// url: "http://api.destinycards.local",
        context: document.body,
        success: function(data, status){
	    console.log(data)
	    $.each(data, function(i, obj){
		$("#bloc_page").append('<div class="default_card" onclick="flip(this)"> \
        <div class="front"> \
        </div> \
        <div class="back"> ' + obj.quote + ' </div> \
      </div> \
    </div>')
		console.log(obj.quote)
	    })
        }
    });
});
