(function($){
	$(window).on("load",function(){
		$(".terms-block").mCustomScrollbar();
		$(".terms-block").mCustomScrollbar("update");

	});
})(jQuery);

let form = document.querySelector('.form-agree'),
		input = form.querySelector('#agree'),
		button = form.querySelector('.btn');

console.log(button);

form.addEventListener('change', function () {
	if(input.checked) {
		button.classList.remove('disabled');
	} else {
		button.classList.add('disabled');
	}
});



