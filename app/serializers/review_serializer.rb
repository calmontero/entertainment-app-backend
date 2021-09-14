class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :comment, :rating, :program_id

end
