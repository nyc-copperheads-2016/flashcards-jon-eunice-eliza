# Specific round statistics
get '/rounds/:id' do
  @round = Round.find(params[:id])
  @deck = Deck.find(@round.deck_id)
  erb :'rounds/show'
end

get '/decks/:id/rounds/new' do
  @deck = Deck.find_by(id: params[:id])
  @round = Round.create(deck_id: @deck.id, user_id: current_user.id, first_guesses: 0, total_guesses: 0)
  session[:current_round_id] = @round.id
  @deck.cards.each do |card|
    Guess.create(card_id: card.id, round_id: @round.id, user_id: 1)
  end
  redirect "/rounds/#{@round.id}/cards/first"
end
