class PossibleAnswerSerializer < ActiveModel::Serializer
  attributes :id, :answer_type, :question_id, :code_mirror_language, :multiple_choice_long, :multiple_choice_short
end
