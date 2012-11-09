
$(function() {
  $("button").on("click", function() {
    var self = this;

    $.ajax({
      url: "/startups/" + $(this).attr("data-startup-id") + "/ping",
      type: "POST"
    }).done(function() {
      $(self).attr("disabled", true);
    });
  })

  $('.alert-success').delay(2500).slideUp('fast', 'swing');
});
