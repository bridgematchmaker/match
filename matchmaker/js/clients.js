$('#EmailModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) 
    var user_id = button.data('whatever') 
    var modal = $(this)
    modal.find('.modal-user-id').val(user_id)
});

$(document).ready(function () {
    $('#template').change(function () {
        var template = $(this).val();
       
        if (template == '') {
            return(false);
		}
			
		$.ajax({
            type: "POST",
            url: "/matchmaker/function/client_get_template.php",
            data: { action: 'template', template },
            cache: false,
            success: function(response){
				$('#template_html').html(response);   
            }
        });
    });
});