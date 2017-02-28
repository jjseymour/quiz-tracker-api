class StudentQuizSerializer < ActiveModel::Serializer
  attributes :id, :quiz_id, :student_id
  belongs_to :quiz
end
