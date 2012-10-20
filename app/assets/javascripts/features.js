var equalFeatureHeight = function() {
  $('.features-list').each(function() {
    var currentTallest = 0;

    $(this).find('.feature').each(function(i) {
      var height = $(this).height();
      if (height > currentTallest) {
        currentTallest = height;
      }
    });

    $(this).find('.feature').css({'min-height': currentTallest});
  });
};

$(document).ready(equalFeatureHeight);
$(window).bind('page:change', equalFeatureHeight);
