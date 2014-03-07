$(document).ready(function(){
 $('a.square-more').click(function(){
  $("html, body").animate({ 
    scrollTop: $(".slide-projects").offset().top
  }, 500);
 });

 $("a#linkOfferchat").click(function(){
  $(".modal-backdrop, #modalOfferchat").fadeIn();
  $("body").addClass('modal-open');
 });
 $("a.close").click(function(){
  $(".modal-backdrop, #modalOfferchat").fadeOut();
  $("body").removeClass('modal-open');
 });
  
});


