$(document).ready(function(){
  $("a#navTeam").click(function(){
    $('html, body').animate({
      scrollTop: $("#sectionTeam").offset().top
    }, 2000);
  });
  $("a#navHome").click(function(){
    $('html, body').animate({
      scrollTop: $('html').offset().top
    }, 2000);
  });
  $("a#navAbout").click(function(){
    $('html, body').animate({
      scrollTop: $("#sectionAbout").offset().top
    }, 2000);
  });
  $("a#navContact").click(function(){
    $('html, body').animate({
      scrollTop: $("#sectionContact").offset().top
    }, 2000); 
  });
 
  $('.bxslider').bxSlider();
  
  // $(window).scroll(function(){
  //   $(".top-nav").removeClass("fixed");
  //   if($(this).scrollTop() >= 50){
  //     $(".top-nav").addClass('fixed');
  //   }
  // });

  
});


