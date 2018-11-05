var form = document.querySelector('.form-content'),
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


