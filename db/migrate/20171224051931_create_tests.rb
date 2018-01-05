class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :name
      t.string :questions_choice, array: true, default: []
      t.string :questions_move, array: true, default: []
      t.integer :active_tab
      t.integer :curr_score
      t.integer :curr_q
      t.timestamps
    end
  end
end
