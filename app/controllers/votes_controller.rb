post '/questions/:id/votes' do

  puts "i'm in /questions/:id/votes"
  puts "#{params[:id]}, user_id: #{current_user.id}, value: #{params[:vote].to_i}"

  question = Question.find(params[:id])

  question.votes.create(user_id: current_user.id, value: params[:vote].to_i)

  redirect back
end

post '/questions/:qid/answers/:aid/votes' do

  # may need to refactor this -- only relying on answerIDs -- not using questions at all
  Answer.find(params[:aid]).votes.create(user_id: current_user.id, value: params[:vote].to_i)

  redirect back
end

post '/questions/:qid/comments/:cid/votes' do

  Comment.find(params[:cid]).votes.create(user_id: current_user.id, value: params[:vote].to_i)

  redirect back
end

post '/questions/:qid/answers/:aid/comments/:cid/votes' do

  Comment.find(params[:cid]).votes.create(user_id: current_user.id, value: params[:vote].to_i)

  redirect back
end
