class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :correct?, :student_quiz_id, :question_id

  belongs_to :question, serializer: QuestionSerializer
end
