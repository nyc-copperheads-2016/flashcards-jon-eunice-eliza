# Specific round statistics
GET '/rounds/:id' do
  @round = Round.find(params[:id])
  @deck = Deck.find(@round.deck_id)
  erb :'rounds/show'
end
