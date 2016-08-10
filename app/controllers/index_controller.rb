get '/' do
  erb :index
end

get '/user' do
  erb :'user/show'
end

get '/user/new' do
  erb :'user/new' #show new user view
end

post '/user' do

  #below works with properly formatted params in HTML form
  @user = User.new(email: params[:email], hashed_password: params[:hashed_password]) #create new user

  if @user.save #saves new user or returns false if unsuccessful
    redirect '/user' #redirect back to user index page
  else
    erb :'user/new' # show new user view again(potentially displaying errors)
  end
end

get '/user/login' do
  erb :'user/login'

end
get '/user/:id' do

  erb :'user/show' #show single user view

end



