//alert(window.location.pathname);
$(document).ready(function(){
  optionName = window.location.pathname
  var setOptionTitle = function(){
    $('.option-title').text(optionName);
  };
  setOptionTitle();
  
  $.getJSON('/options/xtrabackup/2.2.3', function(data){
      data.forEach(function(element, index, array){
        $('.panel-body-options').append('<span style="display:block">' + element.name + element.longOption + element.description + '</span>');  
      });
  });
});
