$(function() {
  $('aside.aside-menu').hover(
    function () {
      $(this).toggleClass('-expanded');
      $('div.wrapper').toggleClass('-layover');
    }

  );
  if ($('body').hasClass('accounts-index')) {
    $.ajax({
      url: '/privileges.json',
      dataType: 'json',
      method: 'GET'
    }).done(function(data) {
      console.log(data);
    });
  }

});
