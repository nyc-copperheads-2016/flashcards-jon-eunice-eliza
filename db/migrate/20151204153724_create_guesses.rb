class CreateGuesses < ActiveRecord::Migration
  def change
    create_table    :guesses do |t|
      t.references  :card, null: false
      t.references  :user, null: false

      t.timestamps null: false
    end
  end
end
