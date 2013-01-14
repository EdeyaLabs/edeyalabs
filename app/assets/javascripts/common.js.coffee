$(document).ready ->
  $(".scroll").click (event) ->
    event.preventDefault()
    $("html,body").animate
      scrollTop: $(@hash).offset().top
    , 500

  $("a[href=#home]").click ->
    $("html, body").animate
      scrollTop: 0
    , "slow"
    false

  aboveHeight = $("header").outerHeight()
  
  $(window).scroll ->
    
    #if scrolled down more than the header’s height
    if $(window).scrollTop() > aboveHeight
      
      # if yes, add “fixed” class to the <nav>
      # add padding top to the #content 
      $(".menu-navigation").css "opacity", "0"
      $(".menu-navigation-2").show()
    else
      
      # when scroll up or less than aboveHeight,
      $(".menu-navigation").css "opacity", "1"
      $(".menu-navigation-2").hide()
