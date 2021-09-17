class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar, :user_id
  
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :programs, through: :favorites
end
