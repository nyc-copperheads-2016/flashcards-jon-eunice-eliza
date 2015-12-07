class AddSolvedColumnToGuesses < ActiveRecord::Migration
  def change
    add_column(:guesses, :solved, :boolean)
  end
end
