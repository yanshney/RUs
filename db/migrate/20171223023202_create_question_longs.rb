class CreateQuestionLongs < ActiveRecord::Migration[5.1]
  def change
    create_table :question_longs do |t|
      t.string :partOne
      t.string :ansWrongOne
      t.string :ansWrongTwo
      t.string :ansWrongThree
      t.string :ansRight
      t.string :partTwo
      t.string :ansWrongOne2
      t.string :ansWrongTwo2
      t.string :ansWrongThree2
      t.string :ansRight2
      t.string :partThree

      t.timestamps
    end
  end
end
