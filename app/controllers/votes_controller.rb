
post '/questions/:id/votes' do

  Question.find(params[:id]).votes.create(user_id: current_user.id, value: value)

  redirect back
end

post 'questions/:id/answers/:id/votes' do

  redirect back
end

post '/questions/:id/comments/:id/votes' do

  redirect back
end

post '/questions/:id/answers/:id/comments/:id/votes' do

  redirect back
end
