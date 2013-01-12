$(document).ready ->
  aboveHeight = $("header").outerHeight()
  
  # var aboveHeight = 70;
  #when scroll
  $(window).scroll ->
    
    #if scrolled down more than the header’s height
    if $(window).scrollTop() > aboveHeight
      
      # if yes, add “fixed” class to the <nav>
      # add padding top to the #content 
      $(".menu-navigation").hide "fast"
      $(".menu-navigation-2").show "fast"
    else
      
      # when scroll up or less than aboveHeight,
      $(".menu-navigation").show "fast"
      $(".menu-navigation-2").hide "fast"
