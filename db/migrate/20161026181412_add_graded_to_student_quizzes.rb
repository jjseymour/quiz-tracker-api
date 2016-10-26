class AddGradedToStudentQuizzes < ActiveRecord::Migration[5.0]
  def change
    add_column :student_quizzes, :graded, :boolean
  end
end
