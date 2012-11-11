
$(function() {

	$(".click").click(function () {
		$("#openclose").slideToggle("slow", function(){
        if($('#openclose').is(":visible")){
            $("html, body").animate({ scrollTop:$('#openclose').position().top});
        }});
  });





  $(".box-footer .action-ping").on("click", function() {
    var self = this;

    $.ajax({
      url: "/startups/" + $(this).attr("data-startup-id") + "/ping",
      type: "POST"
    }).done(function() {
      $(self).attr("disabled", true);
    });
  })

  $(".box-footer .action-follow").on("click", function() {
    var self = this;

    $.ajax({
      url: "/startups/" + $(this).attr("data-startup-id") + "/follow",
      type: "POST"
    }).done(function() {
      $(self).attr("disabled", true);
    });
  })

  $('.alert-success').delay(2500).slideUp('fast', 'swing');
});




