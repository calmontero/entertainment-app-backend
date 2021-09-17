class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar
  
  has_many :favorites
end
