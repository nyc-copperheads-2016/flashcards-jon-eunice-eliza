post '/cards/:id/guesses' do
  @card = Card.find(params[:id])
  @round = Round.find(session[:current_round_id])
  temp = @round.total_guesses + 1
  @round.update_attributes(total_guesses: temp)


  if params[:answer].downcase == @card.answer.downcase
    guess = @round.guesses.find_by(card_id: @card.id)
    binding.pry
    count = @round.deck.cards.find(@card.id).guesses.where(round_id: @round.id).count

    if count == 1
      guess_count = @round.first_guesses + 1
      @round.update_attributes(first_guesses: guess_count)
    end

    guess.update_attributes(solved: true)
    remaining_cards = Guess.where(["solved = ? and round_id = ?", "false", @round.id ]).order(:id)
    # binding.pry
    if remaining_cards.length == 0
      redirect "/rounds/#{@round.id}"
    else
      # binding.pry

      @card = remaining_cards.first.card
      erb :'/cards/show'
    end

  else
    @last_card_was_wrong_answer = @card.answer
    erb :'/cards/show'
  end

end

