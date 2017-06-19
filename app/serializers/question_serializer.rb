class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :active?, :code_mirror_language, :quiz_id
  has_many :possible_answers, serializer: PossibleAnswerSerializer
end
