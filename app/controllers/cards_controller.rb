
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

# get '/rounds/:id/cards/next'

get '/rounds/:id/cards/first' do
  # What I REALLY want to see is:
  #
  # next_card = @round.next_card
  #
  # All of the logic for figuring out which cards have been answered, both correctly
  # and incorrectly, and which cards remain, should live in the Round object
  remaining_cards = Guess.where(["solved = ? and round_id = ?", "false", "#{params[:id]}"]).order(:id)
  @card = remaining_cards.first.card
  erb :'cards/show'
end

get '/cards/:id' do
  "Hi!"
end
