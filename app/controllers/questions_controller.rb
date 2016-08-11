
get '/questions' do
  @questions = Question.all
  erb :'/questions/all'
end

get '/questions/new' do
  erb :'questions/new'
end

# Show a question
get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :'questions/show'
end

# Create a question
post '/questions' do
  # Add check for logged_in?
  question = Question.new(params[:question])
  question.user_id = current_user.id
  if question.save
    if request.xhr?
      erb(:'questions/_body', layout: false, locals: {question: question})
    else
      redirect "/questions/#{question.id}"
    end
  else
    @errors = questions.errors.full_messages
    erb :'questions/new'
  end
end

# Update a question
put '/questions/:id' do
  question = Question.find(params[:id])
  question.update(params[:question])
  redirect "/questions/#{question.id}"
end

# Delete a question
delete '/questions/:id' do
  question = Question.find(params[:id])
  if question
    question.destroy
  else
    @errors << "Unable to delete question."
  end
    erb :'questions/index'
end
