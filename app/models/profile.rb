class Profile < ApplicationRecord
    belongs_to :user
    has_many :favorites, dependent: :destroy
    has_many :programs, through: :favorites
end
