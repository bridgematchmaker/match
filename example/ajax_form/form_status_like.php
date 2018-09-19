<html>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>


<script>
$( document ).ready(function() {
    $(".btn_like").click(
		function(){
			$form_id = this.parentNode.id;
			sendAjaxForm('result_form', $form_id, 'backend.php', '1');
			return false; 
		}
	);
	
	$(".btn_dislike").click(
		function(){
			$form_id = this.parentNode.id;
			sendAjaxForm('result_form', $form_id, 'backend.php', '0');
			return false; 
		}
	);
});


function sendAjaxForm(result_form, ajax_form, url, status_like) {
	$data_form = $("#"+ajax_form).serialize();
	
    $.ajax({
        url:     url, //url страницы (action_ajax_form.php)
        type:     "POST", //метод отправки
        dataType: "html", //формат данных
        data: $data_form+"&status_like="+status_like,  // Сеарилизуем объект
        success: function(response) { //Данные отправлены успешно
        	result_ajax = $.parseJSON(response);
        	$('#result_form').html(result_ajax.answer);
    	},
    	error: function(response) { // Данные не отправлены
            $('#result_form').html('Ошибка. Данные не отправлены.');
    	}
 	});
}
</script>


	<form action="" id="1" method="POST">
	Test text: <input name="text" type="text">
	<input  class="btn_like" type="submit" value="send Like"> <input  class="btn_dislike" type="submit" value="send Dislike">
	</form>
	
	<br>
	
	<form action="" id="2" method="POST">
	Test text: <input name="text" type="text">
	<input  class="btn_like" type="submit" value="send Like"> <input  class="btn_dislike" type="submit" value="send Dislike">
	</form>
	
	
	
	<div id="result_form"><div> 
	
	
</html>