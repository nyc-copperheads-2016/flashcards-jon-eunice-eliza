class AddStatsToRounds < ActiveRecord::Migration
  def change
    add_column(:rounds, :first_guesses, :integer)
    add_column(:rounds, :total_guesses, :integer)
  end
end
