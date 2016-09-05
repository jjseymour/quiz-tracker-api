class InstructorCohort < ApplicationRecord
  belongs_to :instructor, class_name: 'User'
  belongs_to :cohort
end
