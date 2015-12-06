post '/guesses' do
  # @unsolved_cards is currently NIL
  if params[:guess] == @unsolved_cards.first.answer
    @solved_cards << @unsolved_cards.shift
  else
    @unsolved_cards << @unsolved_cards.shift
  end
  self.total_guesses += 1
end

