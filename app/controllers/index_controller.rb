before '*' do
  @errors = []
end

get '/' do
  erb :index
end

get '/users' do
  erb :'users/show'
end

get '/users/new' do
  erb :'users/new' #show new user view
end

post '/users' do
  user = User.new(email: params[:email])
  user.password = params[:password]
  if user.save
    session[:user_id] = user.id
    redirect '/users'
  else
    erb :'users/new'
  end
end

get '/users/login' do
  erb :'users/login'
end

post '/users/login' do
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    erb :'users/show'
  else
    @errors << "Unable to log in."
    erb :'/users/login'
  end
end

get '/users/:id' do
  erb :'users/show' #show single user view
end

post '/users/logout' do
  puts "i'm logging out!"
  session[:user_id] = nil
  redirect to "/"
end
