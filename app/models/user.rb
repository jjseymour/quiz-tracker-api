class User < ApplicationRecord
  # belongs_to :cohort
  has_many :instructor_cohorts, foreign_key: 'instructor_id'
  has_many :cohorts, through: :instructor_cohorts
  has_many :student_quizzes, foreign_key: 'student_id'
  has_many :quizzes, through: :student_quizzes
  has_secure_password

  @@instructors = []

  def self.instructors
    @@instructors
  end

  def add_instructor
    @@instructors << self
  end
end
