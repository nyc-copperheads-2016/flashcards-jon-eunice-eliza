get '/' do
  if session[:user_id]
    redirect '/decks'
  else
    redirect '/sessions/new'
  end
end
