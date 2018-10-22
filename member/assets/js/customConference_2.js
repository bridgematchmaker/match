
let form = document.querySelector('.user-info-form'),
	inputAgree = form.querySelector('#agree'),
	button = form.querySelector('.btn'),
	selectTime = form.querySelector('#time'),
	dateValue = form.querySelectorAll('.result-date'),
	timeValue = form.querySelectorAll('.time-value');

console.dir(selectTime);

form.addEventListener('change', function () {

	if(inputAgree.checked ) {
		button.classList.remove('disabled');
	} else {
		button.classList.add('disabled');
	}
});
function dValue(input) {
	for(let i = 0; i < dateValue.length; i++) {
		dateValue[i].innerHTML = input.value;

	}
}
function selValue (select) {
	for(let i = 0; i < timeValue.length; i++) {
		if(select.value[3] === '0'){
			timeValue[i].innerHTML = parseFloat(select.value) + ':00';
		} else {
			timeValue[i].innerHTML = parseFloat(select.value) + ':30';
		}

		if( i == timeValue.length - 1) {
			if(select.value[3] === '0'){
				timeValue[i].innerHTML = parseFloat(select.value) + ':30';
			} else {
				timeValue[i].innerHTML = (parseFloat(select.value) + 1) + ':00';
			}
		}
	}
}


