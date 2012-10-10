var kitchenSlideshow = function() {
  $('#slideshow .kitchen:gt(0)').hide();

  setInterval(function() {
    $('#slideshow .kitchen:first-child').fadeOut(1000)
      .next('.kitchen').fadeIn(1000)
      .end().appendTo('#slideshow');
  }, 5000);
}

$(document).ready(kitchenSlideshow)
$(window).bind('page:load', kitchenSlideshow)
