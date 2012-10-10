var homeSlideshow = function() {
  $('#featured img:gt(0)').hide();

  setInterval(function() {
    $('#featured .kitchens :first-child').fadeOut(1000)
      .next('img').fadeIn(1000)
      .end().appendTo('#featured .kitchens');
  }, 5000);
};

$(document).ready(homeSlideshow)
$(window).bind('page:load', homeSlideshow)
