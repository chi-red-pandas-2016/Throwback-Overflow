post '/questions/:question_id/comments' do
  question = Question.find(params[:question_id])
  comment = question.comments.create(user_id: current_user.id, text: params[:comment])
  if request.xhr?
    erb :'comments/_comment', layout: false, locals: {comment: comment}
  else
    redirect to "/questions/#{params[:question_id]}"
  end
end

post '/questions/:question_id/answers/:answer_id/comments' do
  answer = Answer.find(params[:answer_id])
  comment = answer.comments.create(user_id: current_user.id, text: params[:comment])
  if request.xhr?
    erb :'comments/_comment', layout: false, locals: {comment: comment}
  else
  # got back to answer via anchor?
  redirect to "/questions/#{params[:question_id]}"
  end
end
