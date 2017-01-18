class StudentQuizSerializer < ActiveModel::Serializer
  attributes :id, :quiz_id, :student_id
end
