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
    $('.mdl-card__actions .hidden-content').click(function(event) {
      activeClass = 'mdl-button--primary';
      duration = 400
      parentElement = $(this).parent();
      if ($(this).hasClass('version-button')) {
        $('.version-details', parentElement).slideToggle(duration);
        $('.privilege-details', parentElement).slideUp(duration);
        $(this).addClass(activeClass);
      } else if ($(this).hasClass('privilege-button')) {
        $('.version-details', parentElement).slideUp(duration);
        $('.privilege-details', parentElement).slideToggle(duration);
        $(this).addClass(activeClass);
      }

    });
  });
});
