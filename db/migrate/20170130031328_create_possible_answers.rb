class CreatePossibleAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :possible_answers do |t|
      t.string :content
      t.integer :question_id
      t.string :answer_type
      t.string :multiple_choice_short, array: true, default: []
      t.string :multiple_choice_long, array: true, default: []
      t.text :long_answer
      t.string :short_answer
      t.text :code

      t.timestamps
    end
  end
end
