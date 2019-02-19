$(function() {

  var arr = [];
  $('.feeds .feeds-post').each(function(){
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
          dataHtml += '<div class="feeds-post clearfix">'+item+'</div>';
        });

        $('.feeds').fadeIn().html(dataHtml);
      }
    })
  })('feed');

})