class CohortStudentSerializer < ActiveModel::Serializer
  has_many :students, serializer: StudentSerializer
  attributes :id, :student_named, :flatiron_named, :expected_student_number, :start_date

end
