post '/questions/:question_id/comments' do
  question = Question.find(params[:question_id])
  question.comments.create(user_id: current_user.id, text: params[:comment])
  redirect to "/questions/#{params[:question_id]}"
end

post 'questions/:question_id/answers/:answer_id/comments' do
  answer = Answer.find(params[:answer_id])
  answer.comments.create(user_id: current_user.id, text: params[:comment])
  # got back to answer via anchor?
  redirect to "/questions/#{params[:question_id]}"
end
