
# get '/rounds/:round_id/cards/:id' do
  # @deck = Deck.find_by(id: params[:deck_id])
  # @card = @deck.cards.find_by(id: params[:id])
#   @card = @unsolved_cards.shift
#   until @unsolved_cards.length == 0
#     @card = @cards.shift
#     erb :'cards/show'
#   end
#   redirect "/rounds/#{params[:round_id]}"
# end

get '/cards/first'

  erb :'cards/show'
end
