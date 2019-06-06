$(function() {

    var arr = [];
    $('.message-list .message-block').each(function(){
        feedID = $(this).attr('id');
        feedHtml = $(this).html();
        arr.push(feedHtml);
    });

    (function(name) {
        var container = $('#pagination-' + name);
        container.pagination({
            dataSource: arr,
            locator: 'items',
            totalNumber: 10,
            pageSize: 10,
            showPrevious: false,
            showNext: false,
            callback: function(response, pagination) {

                $('.paginationjs-pages ul').prepend('<li class="title">Pages</li>');
                var dataHtml = '';

                $.each(response, function (index, item) {
                    dataHtml += '<div class="message-block">'+item+'</div>';
                });

                $('.message-list').fadeIn().html(dataHtml);
            }
        })
    })('message');

})