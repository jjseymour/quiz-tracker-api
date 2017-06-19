class Answer < ApplicationRecord
  belongs_to :student_quiz
  belongs_to :question

  validates :content, presence: true

  def check_answer
    user_answer = self.content.downcase.strip
    case self.question.possible_answers[0].answer_type
    when "code"
      possible_answer = self.question.possible_answers[0].code.downcase.strip.squish
    when "multiple_choice_long"
      possible_answer = self.question.possible_answers[0].content.downcase.strip.squish
    when "multiple_choice_short"
      possible_answer = self.question.possible_answers[0].content.downcase.strip.squish
    when "long_answer"
      possible_answer = self.question.possible_answers[0].long_answer.downcase.strip.squish
    when "short_answer"
      possible_answer = self.question.possible_answers[0].short_answer.downcase.strip.squish
    end
    # binding.pry

    if possible_answer == user_answer
      self.correct = true
    else
      self.correct = false
    end
  end
end
