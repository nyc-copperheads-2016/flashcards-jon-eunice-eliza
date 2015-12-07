get '/sessions/new' do
  erb :'sessions/new', locals: { errors: params[:errors] }
end

post '/sessions' do
  user = User.find_by(username: params[:username])
  if (user) && (user.password == params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    # Case: Incorrect username or password. Where to redirect???
    redirect '/sessions/new?errors=incorrect_user_or_password'
  end
end

delete '/sessions' do
  session.clear
  redirect '/'
end
