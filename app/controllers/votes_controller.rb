post '/questions/:id/votes' do
  if logged_in?
    question = Question.find(params[:id])

    if existing = existing_vote(current_user.id, "Question", question.id)

      if existing.value != params[:vote].to_i
        existing.update_attribute(:value, existing.value + params[:vote].to_i)
      end


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
  else
     @errors << "You must be a member to vote"
  end
end

post '/questions/:qid/answers/:aid/votes' do
  if logged_in?
    # may need to refactor this -- only relying on answerIDs -- not using questions at all
    answer = Answer.find(params[:aid])

    if existing = existing_vote(current_user.id, "Answer", answer.id)
      if existing.value != params[:vote].to_i
        existing.update_attribute(:value, existing.value + params[:vote].to_i)
      end
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
  else
     @errors << "You must be a member to vote"
  end

end

post '/questions/:qid/comments/:cid/votes' do
  if logged_in?
    comment = Comment.find(params[:cid])

    if existing = existing_vote(current_user.id, "Comment", comment.id)
      if existing.value != params[:vote].to_i
        existing.update_attribute(:value, existing.value + params[:vote].to_i)
      end
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
  else
     @errors << "You must be a member to vote"
  end
end

post '/questions/:qid/answers/:aid/comments/:cid/votes' do

  puts "hitting this route: /questions/:qid/answers/:aid/comments/:cid/votes"
  if logged_in?

    comment = Comment.find(params[:cid])

    if existing = existing_vote(current_user.id, "Comment", comment.id)
      if existing.value != params[:vote].to_i
        existing.update_attribute(:value, existing.value + params[:vote].to_i)
      end
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
  else
     @errors << "You must be a member to vote"
  end
end
