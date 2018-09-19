(function ($) {

    $( document ).ready(function() {

        $('.member-profile-form').each(function(){

            var form = $(this);
            var  btn = form.find('input[type="submit"]');

            form.find('.require').addClass('empty-field');

            function checkInput(){
                form.find('.require').each(function(){

                    if($(this).val() != ''){
                        $(this).removeClass('empty-field');
                        $(this).parent().find('span.required-field').remove();

                    } else {
                        $(this).addClass('empty-field');
                        if($(this).parent().find('span.required-field').length>0){
                            return;
                        }
                        else{
                            $(this).before('<span class="required-field">Field is required</span>');

                        }
                    }
                });
            }

            function count_empty_field() {
                var sizeEmpty = form.find('.empty-field').size();
                console.log(sizeEmpty);
                if(sizeEmpty > 0){
                    if(btn.hasClass('disabled')){
                        return false
                    } else {
                        btn.addClass('disabled')
                    }
                } else {
                    btn.removeClass('disabled')
					form.submit();
                }
            }
            count_empty_field();

            function lightEmpty(){
                form.find('.empty-field').addClass('field-bordered');
            }

            btn.click(function(){
                if($(this).hasClass('disabled')){
                    // False Send Form
                    lightEmpty();
                    checkInput();
                    count_empty_field();
                    return false;

                } else {
                    // Send Form
                    form.submit();
                }
            });
        });

    });

})(jQuery);