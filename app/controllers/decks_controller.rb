get '/decks' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do
  @deck = params[:id]
  erb :'decks/show'
end

