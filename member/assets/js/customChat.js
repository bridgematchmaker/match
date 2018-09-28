(function($){
	$(window).on("load",function(){
		$(".block-chat-body").mCustomScrollbar();
	});
})(jQuery);

//var objDiv = document.getElementById("myScroll");
//objDiv.scrollTop = objDiv.scrollHeight;

$("#myScroll").mCustomScrollbar("update");
    setTimeout(function(){
        $("#myScroll").mCustomScrollbar("scrollTo","bottom");
    },200);
