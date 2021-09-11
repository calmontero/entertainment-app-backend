class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar
  has_one :user
end
