class CreateGuesses < ActiveRecord::Migration
  def change
    create_table    :guesses do |t|
      t.references  :card, null: false
      t.references  :user, null: false
      # t.string :answer # Sometimes it makes sense to store the actions that
      # led to a specific effect.  In your case you are storing the net effect
      # of the actions that have occurred.

      t.timestamps null: false
    end
  end
end
