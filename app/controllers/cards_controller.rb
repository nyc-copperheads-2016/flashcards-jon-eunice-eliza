get '/rounds/:round_id/cards/:id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @card = @deck.cards.find_by(id: params[:id])
  erb :'cards/show'
end
