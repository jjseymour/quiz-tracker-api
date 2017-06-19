class StudentQuizSerializer < ActiveModel::Serializer
  attributes :id, :quiz_id, :student_id
  belongs_to :quiz, serializer: QuizSerializer
  has_many :answers, serializer: AnswerSerializer
end
