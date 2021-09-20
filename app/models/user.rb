class User < ApplicationRecord
    has_many :profile, dependent: :destroy
    #has_secure_password
    validates :username, presence: true, uniqueness: true
end
