class CohortSerializer < ActiveModel::Serializers
  attributes :id, :student_named, :flatiron_named, :expected_student_number, :start_date, :instructors
end
