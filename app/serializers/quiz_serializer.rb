class QuizSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :difficulty, :questions, :students
end
