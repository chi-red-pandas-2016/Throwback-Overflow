helpers do

  def vote_route(comment)

    type = comment.commentable_type 
    commentable_id = comment.commentable_id

    if type == "Question"
      question_id = commentable_id
      route = "/questions/#{question_id}/comments/#{comment.id}/votes"
    elsif type == "Answer"
      question_id = comment.parent_question.id
      answer_id = commentable_id
      route = "/questions/#{question_id}/answers/#{answer_id}/comments/#{comment.id}/votes"
    end
    route
  end


  def existing_vote(user_id, voteable_type, voteable_id)
    Vote.find_by(user_id: user_id, voteable_type: voteable_type, voteable_id: voteable_id)
  end

end
