class Question < ApplicationRecord
  belongs_to :quiz, optional: true
  has_many :possible_answers
  has_many :answers
  accepts_nested_attributes_for :possible_answers
end
