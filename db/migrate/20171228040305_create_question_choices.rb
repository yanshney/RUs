class CreateQuestionChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :question_choices do |t|
      t.string :gender
      t.string :number
      t.string :word

      t.timestamps
    end
  end
end
