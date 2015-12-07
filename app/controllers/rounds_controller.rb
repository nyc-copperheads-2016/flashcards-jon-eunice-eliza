# Specific round statistics
get '/rounds/:id' do
  @round = Round.find(params[:id])
  @deck = @round.deck
  #@deck = Deck.find(@round.deck_id)
  erb :'rounds/show'
end

get '/decks/:id/rounds/new' do
  @deck = Deck.find_by(id: params[:id])
  @round = @deck.create_round(deck_id: @deck.id, user: current_user, first_guesses: 0, total_guesses: 0)
  # Pass objects around.  Dont set id's - set objects using the provided setters
  # @round = Round.create(deck_id: @deck.id, user: current_user, first_guesses: 0, total_guesses: 0)
  session[:current_round_id] = @round.id
  @deck.cards.each do |card|
    card.guesses.create(round: @round, user: current_user)
  end
  redirect "/rounds/#{@round.id}/cards/first"
end
