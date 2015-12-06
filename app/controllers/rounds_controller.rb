# Specific round statistics
get '/rounds/:id' do
  @round = Round.find(params[:id])
  @deck = Deck.find(@round.deck_id)
  erb :'rounds/show'
end

get '/decks/:id/rounds/new' do
  @deck = Deck.find_by(id: params[:id])
  # user_id = 1 until we have a session or user stuff
  @round = Round.create(deck_id: @deck.id, user_id: 1, first_guesses: 0, total_guesses: 0)

  @deck.cards.each do |card|
    Guess.create(card_id: card.id, round_id: @round.id, user_id: 1)
  end
  # erb :'/cards/show' # Eunice's change?
  redirect "/cards/first"
end
