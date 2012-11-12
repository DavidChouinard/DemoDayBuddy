
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

      $(this).addClass('loading').html('<img src="/assets/ajax-loader2.gif" alt="Loading..." />');

      $.ajax({
        url: "/startups/" + $(this).attr("data-startup-id") + "/ping",
        type: "POST"
      }).done(function() {
        $(self).attr("disabled", true).html('Contact details sent<span class="checkmark">✓</span>')
      }).fail(function() {
        $(self).html('Error!')
      });
    }
  })

  $(".box-footer .action-follow").on("click", function() {
    if ($("#prompt-signup").length) {
      // User is logged out
      $("#prompt-signup").modal()
    } else {
      var self = this;

      $(this).addClass('loading').html('<img src="/assets/ajax-loader.gif" alt="Loading..." />');

      $.ajax({
        url: "/startups/" + $(this).attr("data-startup-id") + "/follow",
        type: "POST"
      }).done(function() {
        $(self).attr("disabled", true).html('Followed<span class="checkmark">✓</span>')
      }).fail(function() {
        $(self).html('Error!')
      });
    }
  })

  $('.alert-success').delay(2500).slideUp('fast', 'swing');
});




