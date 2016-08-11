post '/questions/:id/votes' do
  if logged_in?
    question = Question.find(params[:id])

    if existing = existing_vote(current_user.id, "Question", question.id)
      existing.update_attribute(:value, params[:vote].to_i)
      redirect back
    else
      question.votes.create(user_id: current_user.id, value: params[:vote].to_i)
      redirect back
    end
  else
    @errors << "You must be a member to vote"
  end
end

post '/questions/:qid/answers/:aid/votes' do
  if logged_in?
    # may need to refactor this -- only relying on answerIDs -- not using questions at all
    answer = Answer.find(params[:aid])

    if existing = existing_vote(current_user.id, "Answer", answer.id)
      existing.update_attribute(:value, params[:vote].to_i)
      redirect back
    else
      answer.votes.create(user_id: current_user.id, value: params[:vote].to_i)
      redirect back
    end
  else
     @errors << "You must be a member to vote"
  end
end

post '/questions/:qid/comments/:cid/votes' do

  if logged_in?
    comment = Comment.find(params[:cid])

    if existing = existing_vote(current_user.id, "Comment", comment.id)
      existing.update_attribute(:value, params[:vote].to_i)
      redirect back
    else
      comment.votes.create(user_id: current_user.id, value: params[:vote].to_i)
      redirect back
    end
  else
     @errors << "You must be a member to vote"
  end
end

post '/questions/:qid/answers/:aid/comments/:cid/votes' do

  if logged_in?
    Comment.find(params[:cid])

    if existing = existing_vote(current_user.id, "Comment", comment.id)
      existing.update_attribute(:value, params[:vote].to_i)
      redirect back
    else
      comment.votes.create(user_id: current_user.id, value: params[:vote].to_i)
      redirect back
    end
  else
     @errors << "You must be a member to vote"
  end
end
