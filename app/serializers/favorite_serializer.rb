class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :program_id
  #has_many :profiles
  #has_many :programs
end
