$(function() {
  $('#slideshow .kitchen:gt(0)').hide();

  setInterval(function() {
    $('#slideshow .kitchen:first-child').fadeOut('slow')
      .next('.kitchen').fadeIn('slow')
      .end().appendTo('#slideshow');
  }, 5000);
});
