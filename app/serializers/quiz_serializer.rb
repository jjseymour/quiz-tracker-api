class QuizSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :difficulty, :questions, :students
  has_many :questions
end
