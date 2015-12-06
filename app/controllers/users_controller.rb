get '/users/new' do
  erb :'users/new'
end

post '/users' do
  user = User.new(params)
  if user.save
    redirect '/'
  else
    erb :'users/new', locals: { errors: user.errors.full_messages }
  end
end

get '/users/:id' do
  rounds = current_user.rounds.all
  decks_played = {}
  rounds.each do |round|
    # Deck is already in the hash
    if decks_played.has_key?(round.id)
      decks_played[round.id] << round
    # Deck is not in the hash
    else
      decks_played[round.id] = []
      decks_played[round.id] << round
    end
  end

  erb :"users/show", locals: { decks_played: decks_played }
end
