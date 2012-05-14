$(function() {
  $('.featured-kitchens img:gt(0)').hide();

  setInterval(function() {
    $('.featured-kitchens .kitchens :first-child').fadeOut()
      .next('img').fadeIn()
      .end().appendTo('.featured-kitchens .kitchens');
  }, 3000);
});
