(function ($) {
    $( document ).ready(function() {

//Lady Carousel
    function like_lady(){
        var owl_l = $('.lady-carousel');
        owl_l.owlCarousel({
            margin:10,
            nav:true,
            dots:false,
            items:3,
            margin:15,
            lazyLoad: true,
            navText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
            responsive:{
                0:{
                    items:1,
                    nav:true,
                },
                800:{
                    items:2,
                    nav:true,
                },
                1000:{
                    items:3,
                    nav:true,
                }
            }
        });
    }
 

//Like Lady
        function like_lady(){

            $(".like-lady .like").click(function() {
                var like_message = $(this).parents('.item').find('.message-like');
                var unlike_message = $(this).parents('.item').find('.message-unlike');
                var disable_buttons = $(this).parents('.item').find('.button-like-wrapper');

                if(unlike_message.hasClass('show')){
                    unlike_message.removeClass('show');

                }
                disable_buttons.remove();
                like_message.addClass('show');
				
				///////////Ajax send form/////////////
				$form_id = "form_"+this.parentNode.parentNode.id;
				sendNotificationForm('result_form', $form_id, './function/member_carusel_girl.php', '1');

				function sendNotificationForm(result_form, ajax_form, url, status_like) {
					$data_form = $("#"+ajax_form).serialize();
					$.ajax({
						url:     url, //url страницы (action_ajax_form.php)
						type:     "POST", //метод отправки
						dataType: "html", //формат данных
						data: $data_form+"&status_like="+status_like,  // Сеарилизуем объект
						success: function(response) { //Данные отправлены успешно
			
						},
						error: function(response) { // Данные не отправлены
							alert('Ajax notifacation error');
						}
					});
				}
				//////////////////////////////////////

            });

            $(".unlike-lady .unlike").click(function() {
                var unlike_message = $(this).parents('.item').find('.message-unlike');
                var like_message = $(this).parents('.item').find('.message-like');
                var disable_buttons = $(this).parents('.item').find('.button-like-wrapper');

                if(like_message.hasClass('show')){
                    like_message.removeClass('show');
                }
                disable_buttons.remove();
                unlike_message.addClass('show');
				
				
				///////////Ajax send form/////////////
				$form_id = "form_"+this.parentNode.parentNode.id;
				sendNotificationForm('result_form', $form_id, './function/member_carusel_girl.php', '0');

				function sendNotificationForm(result_form, ajax_form, url, status_like) {
					$data_form = $("#"+ajax_form).serialize();
					$.ajax({
						url:     url, //url страницы (action_ajax_form.php)
						type:     "POST", //метод отправки
						dataType: "html", //формат данных
						data: $data_form+"&status_like="+status_like,  // Сеарилизуем объект
						success: function(response) { //Данные отправлены успешно
			
						},
						error: function(response) { // Данные не отправлены
							alert('Ajax notifacation error');
						}
					});
				}
				//////////////////////////////////////
            });

        }
        like_lady();

    });

})(jQuery);