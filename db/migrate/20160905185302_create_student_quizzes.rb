class CreateStudentQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :student_quizzes do |t|
      t.string :grade
      t.text :notes
      t.decimal :data
      t.references :quiz, foreign_key: true
      t.integer :student_id

      t.timestamps
    end
  end
end
