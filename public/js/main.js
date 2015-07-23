//alert(window.location.pathname);
requirejs.config({
  baseUrl: 'js/vendor',
  paths: {
    jquery: 'jquery/2.1.4/jquery.min',
    material: 'mdl/1.0.0/material.min'
  }
});

define(['jquery', 'material'], function ($) {

  $(document).ready(function(){
    $('#button-privileges-xtrabackup').click(function() {
      $('#privileges-xtrabackup').show('fast');
    });
  });
});
