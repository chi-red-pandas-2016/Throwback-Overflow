$(document).ready(function() {
  $('.question_form').on("submit", function(event) {
    event.preventDefault();

    var form_data = $(this).serialize()

    $.ajax({
      url: $(this).attr('action'),
      type: $(this).attr('method'),
      data: form_data,
    })
    .done(function() {
      ;
    })
    .fail(function() {
      console.log("error");
    })
    .always(function() {
      console.log("complete");
    });

  });
});
