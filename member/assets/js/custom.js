(function ($) {
    $( document ).ready(function() {

//Notification
        var owl = $('.notification-carousel');
        owl.owlCarousel({
            margin:10,
            nav:true,
            lazyLoad: true,
            onInitialized : counter,
            responsive:{
                0:{
                    items:1
                }
            }
        });

        function counter(event) {
            var items     = event.item.count;     // Number of items
            $('.count').html(items);
        }

        function delete_notification(){

            var not_items = $( ".notification-carousel div.item");

            $(".delete-notification").click(function() {
				
				$form_id = "notification_"+this.parentNode.id;
				sendNotificationForm('result_form', $form_id, './function/notification_read.php');
				
				function sendNotificationForm(result_form, ajax_form, url) {
					$.ajax({
						url:     url, //url страницы (action_ajax_form.php)
						type:     "POST", //метод отправки
						dataType: "html", //формат данных
						data: $("#"+ajax_form).serialize(),  // Сеарилизуем объект
						success: function(response) { //Данные отправлены успешно
			
						},
						error: function(response) { // Данные не отправлены
							alert('Ajax notifacation error');
						}
					});
				}


                for(var i = 0; i<=not_items.size(); i++ ){
                    $('.notification-carousel div.item:eq('+i+') a.delete-notification').attr('data-item', i);
                }

                var active =$(this).data('item');

                $('.notification-carousel').owlCarousel('remove', active).owlCarousel('refresh');

                $('.count').html($( ".notification-carousel div.item").size());

                if($( ".notification-carousel div.item").size()==0){
                    $(".notification-text").css({'display': 'none', "border": "none"}).addClass('notif-hidden');
                }
            });
        }

     delete_notification();

    function notification_view() {
        $(document).mouseup(function (e) {
            if ( !$(e.target).closest(".notification-wrapper").length){
                $(".notification-text").fadeOut(500);
            }
        });

        $(".notification-wrapper .icon-wrapper").click(function() {
            var notification = $(".notification-text");
            notification.fadeToggle(500);
        });
    }
    notification_view();

//Account
    function account_view() {
        $(document).mouseup(function (e) {
            if ( !$(e.target).closest(".account-wrapper").length){
                $(".account-details").fadeOut(500);
            }
        });

        $(".account-wrapper .icon-wrapper").click(function() {
            var account = $(".account-details");
            account.fadeToggle(500);
        });
    }
    account_view();

//Mobile Accordion Menu
    if($(document).width()< 800){
        $(".aside-left").find("div.collapse").removeClass( "show" );
    }

//Lady Carousel
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
        });

    }
    like_lady();
});

})(jQuery);
