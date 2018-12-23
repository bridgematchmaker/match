let form = document.querySelector('.form-service');
form.input = form.getElementsByClassName('input-service');
form.inputCheckList = form.getElementsByClassName('checkbox-report');
form.inputGift1 = form.querySelector('#checkGift1');
form.inputGift2 = form.querySelector('#checkGift2');
form.inputGift3 = form.querySelector('#checkGift3');
form.giftPrice = form.querySelector('.gift-price span');
form.result = form.querySelector('.total-price span');
console.dir(form.giftPrice);
for(let i = 0; i < form.inputCheckList.length; i++) {


	if(form.inputCheckList[i].checked) {
		if(form.inputCheckList[i] === form.inputGift1) {
				form.result.innerHTML = parseInt(form.giftPrice.innerHTML) + 12;
			};
		if(form.inputCheckList[i] === form.inputGift3) {
			form.inputGift1.checked = false;
			form.inputGift2.checked = false;
			form.result.innerHTML = parseInt(form.giftPrice.innerHTML);
		};

	};
	// if(form.inputGift1.checked) {
	//
	// 	form.result.innerHTML = parseInt(form.giftPrice.innerHTML) + 12;
	// };
	form.addEventListener('change', function(){
		if(form.inputGift1.checked) {
			form.result.innerHTML = parseInt(form.giftPrice.innerHTML) + 12;
		} else {
			form.result.innerHTML = parseInt(form.giftPrice.innerHTML);
		}
		if(form.inputGift2.checked){
			form.result.innerHTML = (parseInt(form.result.innerHTML) + (parseInt(form.giftPrice.innerHTML) * 0.1)).toFixed(2);
		}
		if(form.inputGift3.checked) {
			form.inputGift1.checked = false;
			form.inputGift2.checked = false;
			form.result.innerHTML = parseInt(form.giftPrice.innerHTML);
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


