class User < ApplicationRecord
    has_many :profile
    #has_secure_password
    validates :username, presence: true, uniqueness: true
end
