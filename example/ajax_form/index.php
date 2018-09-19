<html>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>


<script>
$( document ).ready(function() {
    $(".btn").click(
		function(){
			$form_id = this.parentNode.id;
			sendAjaxForm('result_form', $form_id, 'backend.php');
			return false; 
		}
	);
});
 
 
function sendAjaxForm(result_form, ajax_form, url) {
    $.ajax({
        url:     url, //url страницы (action_ajax_form.php)
        type:     "POST", //метод отправки
        dataType: "html", //формат данных
        data: $("#"+ajax_form).serialize(),  // Сеарилизуем объект
        success: function(response) { //Данные отправлены успешно
			alert($("#"+ajax_form).serialize());
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
	<input name="var" type="hidden" value="test">
	<input  class="btn" type="submit" value="send">
	</form>

	<div id="result_form"><div> 
	
	
</html>