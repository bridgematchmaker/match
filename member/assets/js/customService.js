let form = document.querySelector('.form-service');
form.input = form.getElementsByClassName('input-service');
form.result = form.querySelector('.result');
console.dir(form.input);
for(let i = 0; i < form.input.length; i++) {

	if(form.input[i].checked) {

		form.result.innerHTML = form.input[i].value;
	};
	form.addEventListener('change', function(){
		if(form.input[i].checked) {
			form.result.innerHTML = form.input[i].value;
		}
	})
}


var

	handler = function() {
		var radios = this.querySelectorAll( '.pay-block input[type="radio"]' ),
				blocks = this.querySelectorAll('.pay-block');

		for ( var i = 0; i < radios.length; i++ ) {

			var radio = radios[i],
					block = blocks[i];
			if ( radio.checked ) block.classList.add( 'block-focus' );
			else block.classList.remove( 'block-focus' );
		}
	};

handler.call( form );
form.addEventListener( 'change', handler );
