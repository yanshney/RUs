class CreateQuestionMoves < ActiveRecord::Migration[5.1]
  def change
    create_table :question_moves do |t|
      t.string :word
      t.string :gender

      t.timestamps
    end
  end
end
