class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.boolean :correct
      t.text :content
      t.references :student_quiz, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
