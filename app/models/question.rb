class Question < ApplicationRecord
  belongs_to :quiz, optional: true
  has_many :answers
end
