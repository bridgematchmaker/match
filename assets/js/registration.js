(function ($) {

    $( document ).ready(function() {

        $('.member-register-form').each(function(){

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

                form.find('.require-phone').each(function(){

                    if($(this).find('.phone').val() != ''){
                        $(this).find('.phone').removeClass('empty-field');
                        $(this).parent().find('span.required-field').remove();

                    } else {
                        $(this).find('.phone').addClass('empty-field');
                        if($(this).find('span.required-field').length>0){
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
                if(sizeEmpty > 0){
                    if(btn.hasClass('disabled')){
                        return false
                    } else {
                        btn.addClass('disabled')
                    }
                } else {
                    form.submit();
                    btn.removeClass('disabled')
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


        // Init Select2
        $('.languages').select2();
        $('select').select2();
        //Init Datepicker
        $( "#date-birth" ).datepicker({
            dateFormat: "yy-mm-dd",
            changeMonth: true,
            changeYear: true,
            yearRange: '1930:'+(new Date).getFullYear()
        });

    });

})(jQuery);