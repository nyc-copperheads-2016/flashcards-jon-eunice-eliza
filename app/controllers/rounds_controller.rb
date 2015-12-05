# Specific round statistics
GET '/rounds/:id' do
  @round = Round.find(params[:id])
  @deck = Deck.find(@round.deck_id)
  erb :'rounds/show'
end

get '/deck/:id/rounds/' do
  @deck = Deck.find_by(id: params[:id])
  @round = Round.create(deck_id: @deck.id, user_id: current_user.id, first_guesses: 0, total_guesses: 0)
  num_of_cards = @deck.cards.length
  random_card_id = [1..num_of_cards].sample
  redirect "/rounds/#{@round.id}/cards/#{random_card_id}"
end
