$(document).ready(function(){
  $("a#navTeam").click(function(){
    $('html, body').animate({
      scrollTop: $("#sectionTeam").offset().top
    }, 500);
  });
  $("a#navHome").click(function(){
    $('html, body').animate({
      scrollTop: $('html').offset().top
    }, 500);
  });
  $("a#navAbout").click(function(){
    $('html, body').animate({
      scrollTop: $("#sectionAbout").offset().top
    }, 500);
  });
  $("a#navContact").click(function(){
    $('html, body').animate({
      scrollTop: $("#sectionContact").offset().top
    }, 500); 
  });
 
  $('.bxslider').bxSlider();
  
  // $(window).scroll(function(){
  //   $(".top-nav").removeClass("fixed");
  //   if($(this).scrollTop() >= 50){
  //     $(".top-nav").addClass('fixed');
  //   }
  // });

  
});


