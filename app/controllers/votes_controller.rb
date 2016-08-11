post '/questions/:id/votes' do

  question = Question.find(params[:id])

  if existing = existing_vote(current_user.id, "Question", question.id)
    existing.update_attribute(:value, params[:vote].to_i)
    if request.xhr?
      question.vote_total.to_s
    else
      redirect back
    end
  else
    question.votes.create(user_id: current_user.id, value: params[:vote].to_i)
    if request.xhr?
      question.vote_total.to_s
    else
      redirect back
    end
  end

end

post '/questions/:qid/answers/:aid/votes' do

  # may need to refactor this -- only relying on answerIDs -- not using questions at all
  answer = Answer.find(params[:aid])

  if existing = existing_vote(current_user.id, "Answer", answer.id)
    existing.update_attribute(:value, params[:vote].to_i)
    if request.xhr?
      answer.vote_total.to_s
    else
      redirect back
    end
  else
    answer.votes.create(user_id: current_user.id, value: params[:vote].to_i)
    if request.xhr?
      answer.vote_total.to_s
    else
      redirect back
    end
  end

end

post '/questions/:qid/comments/:cid/votes' do

  comment = Comment.find(params[:cid])

  if existing = existing_vote(current_user.id, "Comment", comment.id)
    existing.update_attribute(:value, params[:vote].to_i)
    if request.xhr?
      comment.vote_total.to_s
    else
      redirect back
    end
  else
    comment.votes.create(user_id: current_user.id, value: params[:vote].to_i)
    if request.xhr?
      comment.vote_total.to_s
    else
      redirect back
    end
  end

end

post '/questions/:qid/answers/:aid/comments/:cid/votes' do

  Comment.find(params[:cid])

  if existing = existing_vote(current_user.id, "Comment", comment.id)
    existing.update_attribute(:value, params[:vote].to_i)
    if request.xhr?
      comment.vote_total.to_s
    else
      redirect back
    end
  else
    comment.votes.create(user_id: current_user.id, value: params[:vote].to_i)
    if request.xhr?
      comment.vote_total.to_s
    else
      redirect back
    end
  end

end
