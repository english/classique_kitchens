$(function() {
  $('#featured img:gt(0)').hide();

  setInterval(function() {
    $('#featured .kitchens :first-child').fadeOut('slow')
      .next('img').fadeIn('slow')
      .end().appendTo('#featured .kitchens');
  }, 5000);
});
