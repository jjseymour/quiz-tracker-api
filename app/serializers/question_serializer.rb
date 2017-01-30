class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :possible_answers
end
