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


// let payBlockList = form.querySelector('.pay-block-list');
// // payBlock.item = form.querySelector('.pay-block');
// console.dir(payBlockList);
// // console.dir(payBlock.item);
// for(let i = 0; i < payBlockList.children.length; i++) {
//
// 	let item = payBlockList.children[i];
// 	console.dir(item);
// 	payBlockList.addEventListener('change', function () {
// 		if(item.classList.contains('block-focus')) {
// 			item.classList.remove('block-focus');
// 		} else {
// 			item.classList.add('block-focus');
// 		}
//
// 	})
// }
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
