post '/cards/:id/guesses' do
  @card = Card.find(params[:id])
  @round = Round.find(session[:current_round_id])
  @round.total_guesses += 1

  if Guess.where(["solved = ? and round_id = ?", "false", @round.id ])
    erb :'rounds/show'
  end

  if params[:answer].downcase == @card.answer.downcase
    guess = @round.guesses.find_by(card_id: @card.id)
    guess.update_attributes(solved: true)
    remaining_cards = Guess.where(["solved = ? and round_id = ?", "false", @round.id ]).order(:id)
    @card = remaining_cards.first.card
    erb :'/cards/show'
  else
    @last_card_was_wrong_answer = @card.answer
    erb :'/cards/show'
  end

end

