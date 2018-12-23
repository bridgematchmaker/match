(function($){
	$(window).on("load",function(){
		$(".terms-block").mCustomScrollbar();
		$(".terms-block").mCustomScrollbar("update");

	});
})(jQuery);

let form = document.querySelector('.gift-form'),
		input = form.querySelector('#agree'),
		checker = form.querySelector('.product-checkbox'),
		button = form.querySelector('.btn');

console.log(button);

form.addEventListener('change', function () {
	if(input.checked && checker.checked) {
		button.classList.remove('disabled');
	} else {
		button.classList.add('disabled');
	}
});



