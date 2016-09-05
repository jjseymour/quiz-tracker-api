class Cohort < ApplicationRecord
  has_many :students, foreign_key: 'cohort_id', class_name: 'User'
  has_many :quizzes, through: :students
  has_many :user_cohorts
  has_many :instructors, through: :user_cohorts, class_name: 'User'
end
