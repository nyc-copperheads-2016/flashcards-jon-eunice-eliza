class CreateCards < ActiveRecord::Migration
  def change
    create_table   :cards do |t|
      t.references :deck, null: false
      t.string     :prompt, null: false
      t.string     :answer, null: false

      t.timestamps null: false
    end
  end
end
