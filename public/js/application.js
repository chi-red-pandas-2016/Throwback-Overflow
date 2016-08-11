$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

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
