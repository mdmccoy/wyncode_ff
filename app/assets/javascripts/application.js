// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

//= require jquery
//= require jquery_ujs

//menu toggle-button
$(document).ready(function() {
  $(".menu-icon").on("click", function() {
    $("nav ul").toggleClass("showing");
  });

  $('.imghover').mouseenter(function(){
    $(this).find('div.overlaytext').css("display","inline");
  });

  $('.imghover').mouseleave(function(){
    $(this).find('.overlaytext').css("display","none");
  });
});

// scrolling effect

$(window).on("scroll", function() {
  if ($(window).scrollTop()) {
    $('nav').addClass('navbar-dark bg-dark');
    // } else {
    //   $('nav').removeClass('navbar-dark bg-dark');
  }
});
