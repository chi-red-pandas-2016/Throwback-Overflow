$(document).ready(function() {
// Start of Question AJAX
  $('.question-form').on("submit", function(event) {
    event.preventDefault();

    var form_data = $(this).serialize()

    $.ajax({
      url: $(this).attr('action'),
      type: $(this).attr('method'),
      data: form_data
    })
    .done(function(response) {
      $(".question-wrapper").prepend(response);
    })
    .fail(function() {
      console.log("error");
    });
  });
// End of Question AJAX
});
