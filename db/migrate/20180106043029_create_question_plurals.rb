class CreateQuestionPlurals < ActiveRecord::Migration[5.1]
  def change
    create_table :question_plurals do |t|
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
