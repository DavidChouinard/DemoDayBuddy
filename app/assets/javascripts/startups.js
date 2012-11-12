
$(function() {
  $("#prompt-signup").modal()

  $(".click").click(function () {
    $("#openclose").slideToggle("slow", function(){
      if($('#openclose').is(":visible")){
        $("html, body").animate({ scrollTop:$('#openclose').position().top});
      }});
  });

  $(".box-footer .action-ping").on("click", function() {
    if ($("#prompt-signup").length) {
      // User is logged out
      $("#prompt-signup").modal()
    } else {
      var self = this;

      $.ajax({
        url: "/startups/" + $(this).attr("data-startup-id") + "/ping",
        type: "POST"
      }).done(function() {
        $(self).attr("disabled", true);
      });
    }
  })

  $(".box-footer .action-follow").on("click", function() {
    if ($("#prompt-signup").length) {
      // User is logged out
      $("#prompt-signup").modal()
    } else {
      var self = this;

      $.ajax({
        url: "/startups/" + $(this).attr("data-startup-id") + "/follow",
        type: "POST"
      }).done(function() {
        $(self).attr("disabled", true);
      });
    }
  })

  $('.alert-success').delay(2500).slideUp('fast', 'swing');
});




