get '/rounds/:round_id/cards/:id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @card = @deck.cards.find_by(id: params[:id])
  until @cards.length == 0
    @card = @cards.shift
    erb :'cards/show'
  else
    redirect "/rounds/#{params[:round_id]}"
  end
end
