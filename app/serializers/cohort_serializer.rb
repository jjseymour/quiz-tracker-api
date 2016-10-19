class CohortSerializer < ActiveModel::Serializer
  has_many :instructors, serializer: InstructorSerializer
  attributes :id, :student_named, :flatiron_named, :expected_student_number, :start_date

end
