get '/questions/:question_id/answers/new' do
  erb :'answers/new'
end

post '/questions/:question_id/answers' do
  question = Question.find(params[:question_id])
  answer = question.answers.create(text: params[:text], user_id: current_user.id)
  if request.xhr?
    erb :'answers/_show', layout: false, locals: {answer: answer}
  else
    redirect "/questions/#{question.id}"
  end
end

# Update a answer
put '/questions/:question_id/answers' do
  question = Question.find(params[:id])
  question.update(params[:question])
  redirect "/questions/#{question.id}"
end

# Delete a question
delete '/questions/:question_id/answers/:id' do
  answer = Answer.find(params[:id])
  if answer
    answer.destroy
  else
    @errors << "Unable to delete question."
  end
    redirect "/questions/#{params[:question_id]}"
end


put '/questions/:question_id/answers/:id' do
  @question = Question.find(params[:question_id])
  @answer = Answer.find(params[:id])

  if @question.user_id == current_user.id
    @question.answers.each do |answer|
      answer.update_attribute(:best, false)
    end
      @answer.update_attribute(:best, true)
  end

  erb :'questions/show'
end
