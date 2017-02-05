class CreatePossibleAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :possible_answers do |t|
      t.string :content
      t.integer :question_id

      t.timestamps
    end
  end
end
