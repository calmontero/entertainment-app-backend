class Favorite < ApplicationRecord
    belongs_to :profile
    belongs_to :program
end
