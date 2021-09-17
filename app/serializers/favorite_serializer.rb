class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :program_id
  
  belongs_to :profile
  #has_many :programs
end
