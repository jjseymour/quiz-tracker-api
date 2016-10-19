class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :cohort_id
end
