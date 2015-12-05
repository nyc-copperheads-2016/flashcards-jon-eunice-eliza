GET '/rounds' do
  @rounds = Rounds.all
  @decks = Decks.all
  erb :'rounds/index'
end

GET '/rounds/new' do
  @deck = Deck.find(params[:deck_id])
  @round = Round.create(deck_id: params[:deck_id], user_id: params[:user_id])
end

POST '/rounds' do

end

GET '/rounds/:id' do

end
