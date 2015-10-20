$('body.accounts-index').ready(function() {

    $.ajax({
      url: '/privileges.json',
      dataType: 'json',
      method: 'GET'
    }).done(function(data) {
      $('.clibox').text(data);
    });
});
