class Answer < ApplicationRecord
  belongs_to :student_quiz
  belongs_to :question
end
