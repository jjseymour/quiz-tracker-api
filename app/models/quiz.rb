class Quiz < ApplicationRecord
  has_many :student_quizzes
  has_many :students, through: :student_quizzes, class_name: 'User'
  has_many :questions
end
