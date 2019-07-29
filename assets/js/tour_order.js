(function () {

	var regularPrice, choosenDate;

	var input = document.querySelector("#phone");
	window.intlTelInput(input, {
		utilsScript: "assets/js/utils.js",
		separateDialCode: true,
	});

	$('.play').on('click', function(){
		var video = $('.video-box video');
		video.get(0).play();
		$(this).hide();
	});

	$('.section-tour__five input[type="radio"]').on('click', function(){
		if( $(this).is(':checked') ){
			$('.section-tour__five .box').removeClass('active');
			$(this).parent().addClass('active');
		}
	});

	// var dateTom = moment().add(1, 'days').format('DD MMM, YYYY');
	var dateTom = moment().add(1, 'days').format();
	var dateDiscount = moment().add(30, 'days').format();

	$("#cal_result").html( moment().add(1, 'days').locale('en').format('DD MMM, YYYY') );
	$('input[name="date"]').val( moment().add(1, 'days').locale('en').format('DD.MM.YYYY') );

	$("#calendar").ionCalendar({
		lang: "en",
		// format: "DD MMM, YYYY",
		startDate: dateTom,
		onClick: function(date){
			choosenDate = date;
			if ( choosenDate < dateTom ) {
				$("#cal_error").html('You can choose a date only from tomorrow!').slideDown('fast');
				setTimeout(function(){
					$("#cal_error").slideUp('fast').html('');
				}, 3000);
			} else {
				$("#cal_result").html(moment(choosenDate).locale('en').format('DD MMM, YYYY'));
				$('input[name="date"]').val(moment(choosenDate).locale('en').format('DD.MM.YYYY'));
				$("#cal_error").slideUp('fast').html('');
				if( choosenDate > dateDiscount ){
					var discPrice = regularPrice * 0.95;
					$('.regular__price').show().find('span').html(regularPrice);
					$('.discount__price span').html(discPrice.toFixed());
				} else{
					$('.discount__price span').html(regularPrice);
					$('.regular__price').hide().find('span').html('');
				}
			}
		}
	});

	$('input[name="package_list"]').each(function(){
		if( $(this).is(':checked') ){
			$('.discount__price span').html( $(this).val() );
			regularPrice = $(this).val();
			console.log(regularPrice);

			if( $(this).val() == '850' ){
				$('input[name="package_name"]').val('Basic');
			} else if( $(this).val() == '1350' ){
				$('input[name="package_name"]').val('Comfort');
			} else if( $(this).val() == '1900' ){
				$('input[name="package_name"]').val('Luxe');
			}
		}
	});

	$('input[name="package_list"]').on('change', function(){
		if( $(this).is(':checked') ){
			$('.discount__price span').html( $(this).val() );
			regularPrice = $(this).val();
			if( choosenDate > dateDiscount ){
				var discPrice = regularPrice * 0.95;
				$('.regular__price').show().find('span').html(regularPrice);
				$('.discount__price span').html(discPrice.toFixed());
			} else{
				$('.discount__price span').html(regularPrice);
				$('.regular__price').hide().find('span').html('');
			}

			if( $(this).val() == '850' ){
				$('input[name="package_name"]').val('Basic Package');
			} else if( $(this).val() == '1350' ){
				$('input[name="package_name"]').val('Comfort Package');
			} else if( $(this).val() == '1900' ){
				$('input[name="package_name"]').val('Luxe Package');
			}

		}
	});

	var countryCode = '1';

	$('.iti__country').on('click', function(){
		countryCode = $(this).data('dial-code');
	});

	$('input[name="phone"]').on('blur', function(){
		var phoneNum = $(this).val();
		$('input[name="phone_code"]').val(countryCode+phoneNum);
	});

}());