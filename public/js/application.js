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



  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  // THIS IS THE AJAX FOR ANSWERS
  $('form#answer-form').on('submit', function( event ){
    event.preventDefault();
    var $form = $(this);
    var answerData = $form.serialize();

    $.ajax({
      method: $form.attr('method'),
      url: $form.attr('action'),
      data: answerData
    }).done( function(response){
      $form[0].reset();
      $('#answers-list').prepend(response);
    });// close AJAX request
  }); // END OF ANSWER AJAX

  // AJAX FOR COMMENTS
  $('form#comment-form').on('submit', function( event ){
    event.preventDefault();
    var $form = $(this);
    var commentData = $form.serialize();
    $.ajax({
      method: $form.attr('method'),
      url: $form.attr('action'),
      data: commentData
    }).done( function(response){
      $form[0].reset();
      var route = $form.attr('action');
      if (route.includes("answers")){
        $('.answer-comments-list').prepend(response);
      } else {
        $('.question-comments-list').prepend(response);
      }
    }); // close AJAX request
  }); // END OF COMMENTS AJAX
});// close on ready

