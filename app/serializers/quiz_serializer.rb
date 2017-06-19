class QuizSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :difficulty, :students
  has_many :questions, serializer: QuestionSerializer
end
