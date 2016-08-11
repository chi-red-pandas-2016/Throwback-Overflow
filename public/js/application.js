$(document).ready(function() {

// THIS IS THE AJAX FOR QUESTIONS
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
// END OF QUESTION AJAX

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
  });
// END OF ANSWER AJAX

// THIS IS THE AJAX FOR VOTING
  $('.vote-form').on('submit', function( event ){
    event.preventDefault();
    var $form = $(this);
    var voteData = $form.serialize();

    $.ajax({
      method: $form.attr('method'),
      url: $form.attr('action'),
      data: voteData
    }).done( function( response ){
      $form.parent().find(".vote-count").text("VoteCount: "+response);
    });// close AJAX request
  });
// END OF AJAX FOR VOTING


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

//START SLIDING DOWN NEW QUESTION FORM

  $(".question-form-wrapper").hide();

  $(".add-a-throwback").on("click", function() {
    $(".question-form-wrapper").slideToggle();
  });

//END SLIDING DOWN NEW QUESTION FORM

});// close on ready

