class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :program_id
  
  belongs_to :profile
  belongs_to :program
end
