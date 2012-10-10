var showHideAppointment = function() {
  $("#appointment-date").hide();

  $('#message_appointment').click(function() {
    if($(this).is(':checked')) {
      $("#appointment-date").show();
    } else {
      $("#appointment-date").hide();
    }
  });
};

$(document).ready(showHideAppointment)
$(window).bind('page:change', showHideAppointment)
