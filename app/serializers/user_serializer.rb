class UserSerializer < ActiveModel::Serializer
  attributes :id, :instructor, :first_name, :last_name, :cohort_id
end
