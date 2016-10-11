class InstructorSerializer < ActiveModel::Serializer
  belongs_to :cohort
  attributes :id, :first_name, :last_name, :cohort_id, :email
end
