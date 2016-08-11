get '/questions/:question_id/answers/new' do
  erb :'answers/new'
end

post '/questions/:question_id/answers' do
  @question = Question.find(params[:question_id])
  @question.answers.create(text: params[:text], user_id: current_user.id)
  redirect "/questions/#{@question.id}"
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
    puts @answer.text
    @answer.update_attribute(:best, true)
    puts @answer.best
  end

  erb :'questions/show'
end