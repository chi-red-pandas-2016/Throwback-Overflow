post '/questions/:question_id/comments' do
  if logged_in?
    question = Question.find(params[:question_id])
    comment = question.comments.create(user_id: current_user.id, text: params[:comment])
    if request.xhr?
      erb :'comments/_comment', layout: false, locals: {comment: comment}
    else
      redirect to "/questions/#{params[:question_id]}"
    end
  else
    @errors << "You must be a member to comment"
  end
end

post '/questions/:question_id/answers/:answer_id/comments' do
  if logged_in?
    answer = Answer.find(params[:answer_id])
    comment = answer.comments.create(user_id: current_user.id, text: params[:comment])
    if request.xhr?
      erb :'comments/_comment', layout: false, locals: {comment: comment}
    else
    # got back to answer via anchor?
    redirect to "/questions/#{params[:question_id]}"
    end
  else
    @errors << "You must be a member to comment"
  end
end
